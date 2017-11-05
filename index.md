---
layout: default
title: "Vivek Myers"
---
<style>
  #headshot { position: absolute; left: 30px; top: 30px; border: 1ex solid white }
</style>
<img src="pictures/vivek-myers-2017.jpg" alt="Vivek Myers" id="headshot" />

- [Gnomenwald (Java)](lib/GnomenWald.jar) (CS 2110 final project)
- <a href="pictures/Animated%20Citibike%20Usage.mp4"><img src="pictures/PastedGraphic-3.4.png">Animated Citibike Usage in NYC</a>
- [Class website for Ithaca High School AP Chemistry](http://www.tuorichem.com) (Primary designer and maintainer)
- [Termite Chess](http://kbam.net/termite) (A very old project)
- [Chess game (Java)](lib/Chess.jar) (An old 2-player chess implementation)
- [Blockjumper](https://vm0.neocities.org/block-jumper.html) (A JavaScript game, very difficult)
- [Bees (Java)](lib/Bees.jar) (playing with Java graphics and swarming)

<script type="application/javascript">
  function forAllByClass(cn, f) {
    var nl = document.getElementsByClassName(cn)
    for (var i = 0; i < nl.length; i++)
      f(nl[i])
  }
  function removeAll(cn) {
    forAllByClass(cn, function (n) { n.parentNode.removeChild(n) })
  }
  removeAll("project-tagline")
  forAllByClass("project-name",
      function(pn) { pn.innerText = "Vivek Myers" })
  setTimeout(function() {
    removeAll("site-footer")
  }, 1)
</script>
