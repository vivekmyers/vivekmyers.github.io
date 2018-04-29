---
layout: default
title: "Projects - Vivek Myers"
---

- [Gnomenwald (Java)](lib/GnomenWald.jar) (CS 2110 final project)
- <a href="pictures/Animated%20Citibike%20Usage.mp4">Animated Citibike Usage in NYC (Summer internship project) <img class="listpic" src="pictures/PastedGraphic-3%204.png"></a>
- [Chess game (Java)](lib/Chess.jar) (An old 2-player chess implementation)
- [Blockjumper](https://vm0.neocities.org/block-jumper.html) (A JavaScript game, very difficult)
- [String Theory Project](https://www.youtube.com/watch?v=r5W6tC1rbTQ) (An introductory video about string theory)
- [Bees (Java)](lib/Bees.jar) (playing with Java graphics and swarming)
- [Class website for Ithaca High School AP Chemistry](http://www.tuorichem.com) (Primary designer and maintainer)
- [Termite Chess](http://kbam.net/termite) (A very old project)
- [BlockShooter](http://vivekmyers.com/BlockShooter/) (Under development)

<script type="application/javascript">
  window.document.title = "Projects - Vivek Myers"
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
