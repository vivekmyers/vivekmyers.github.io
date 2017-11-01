---
layout: default
title: "Vivek Myers"
---

![Vivek Myers](pictures/vivek-myers-2017.jpg)
- [Termite Chess](http://kbam.net/termite) (A very old project)
- [Chess game (Java)](lib/Chess.jar) (An old 2-player chess implementation)
- [Blockjumper](https://vm0.neocities.org/block-jumper.html) (A JavaScript game)
- [Gnomenwald (Java)](lib/GnomenWald.jar) (CS 2110 final project)
- [Bees (Java)](lib/Bees.jar) (playing with Java graphics and swarming)
- [Class website for Ithaca High School AP Chemistry](http://www.tuorichem.com) (Primary designer and maintainer)


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
