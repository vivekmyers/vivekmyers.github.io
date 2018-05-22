{-#LANGUAGE FlexibleInstances#-}

import Control.Monad.Trans.State
import Data.List.Split
import System.Environment
import Text.Read
import Text.Printf
import Control.Monad
import Data.List

data SVG = SVG [Shape] D D D D String

type D = Double

data Shape = Circle {x :: D, y :: D, r :: D, color :: String}
           | Rect {x :: D, y :: D, w :: D, h :: D, color :: String}
  deriving (Eq)

instance Show Shape where
  show (Circle x y r c) = "<circle cx='" ++
                          show x ++ "' cy='" ++
                          show y ++ "' fill='" ++
                          c ++ "' r='" ++
                          show r ++ "'/>\n      "
  show (Rect x y w h c) = "<rect x='" ++
                          show x ++ "' y='" ++
                          show y ++ "' fill='" ++
                          c ++ "' height='" ++
                          show h ++ "' width='" ++
                          show w ++ "'/>\n      "

fillRect x y w h c = state $ \(SVG s _ _ _ _ _) -> (,) () $ SVG (Rect x y w h c : s) x y w h c

fillCircle x y r c = state $ \(SVG s _ _ _ _ _) -> (,) () $ SVG (Circle x y r c : s) x y r 0 c

class Graphic a where
  render :: State SVG b -> a

instance Graphic SVG where
  render = flip execState $ SVG [] 0 0 0 0 "red"

instance Graphic (IO ()) where
  render i = putStrLn . tstr $ execState i (SVG [] 0 0 0 0 "red")
    where tstr (SVG ss x y w h c) = unlines [
            "<html>",
            "<head>",
            "  <title>Interactive SVG</title>",
            "  <link rel='stylesheet' type='text/css' href='/style.css'>",
            "  <script>setTimeout(() => window.location.reload(true), 60000)</script>",
            "  <style>",
            "    label {",
            "      color: black;",
            "      padding: 1em",
            "    }",
            "  </style>",
            "</head>",
            "<body>",
            "  <div class='bg'></div>",
            "  <div class='main'>",
            "    <form action='' method='get'><br><br>",
            "       <label>Width:</label> <input align='center' type='text' value='%f' name='w'>" `printf` w,
            "       <label>Height: </label><input type='text' value='%f' name='h'><br><br>" `printf` h,
            "       <label>X: </label><input value='%f' type='text' name='x'>" `printf` x,
            "       <label>Y: </label><input value='%f' type='text' name='y'><br><br>" `printf` y,
            "       <label>Color: </label><input type='text' value='%s' name='color'><br><br>" `printf` c,
            "       <button type='submit'>Create</button><br><br>",
            "    </form>",
            "  </div>",
            "  <div class='left'>",
            "    <svg width='100%' height='500'>" ++ foldMap show (nub $ reverse ss) ++ "</svg>",
            "  </div>",
            "  <br>",
            "</body>",
            "</html>"
            ]

parseQ = map ((,) <$> head <*> last) . map (splitOn "=") . splitOn "&"

readOr o x = case readMaybe x of
               Just v -> v
               Nothing -> o

main :: IO ()
main = do
  q <- head <$> getArgs
  qs1 <- readFile ".svg"
  seq (length qs1) (pure ())
  let qs = lines qs1 
  writeFile ".svg" $ unlines (nub $ q:qs)
  render $ do
    forM_ (reverse (q:qs)) $ \i -> do
      let parsed = parseQ i
      let f x = maybe "" id (lookup x parsed)
      fillRect (readOr 0 $ f "x") (readOr 0 $ f "y") (readOr 0 $ f "w") (readOr 0 $ f "h") (f "color")
