---
layout: default
title: "Vivek Myers"
---
<style>
  #headshot { max-width: 25%; position: absolute; left: 30px; top: 30px; border: 1ex solid white }
  .listpic { height: 8em; vertical-align: text-top }
  .main-content { margin-left: 120px }
</style>
<img src="pictures/vivek-myers-2017.jpg" alt="Vivek Myers" id="headshot" />

- [Gnomenwald (Java)](lib/GnomenWald.jar) (CS 2110 final project)
- <a href="pictures/Animated%20Citibike%20Usage.mp4">Animated Citibike Usage in NYC (Summer internship project) <img class="listpic" src="pictures/PastedGraphic-3%204.png"></a>
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
