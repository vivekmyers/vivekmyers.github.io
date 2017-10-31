---
layout: default
title: "Vivek Myers"
---

![Vivek Myers](pictures/vivek-myers-2017.jpg)
- [Class website for Ithaca High School AP Chemistry](http://www.tuorichem.com)
- [Termite Chess](http://kbam.net/termite)
- [Chess game](lib/Chess.jar)
- [Blockjumper](https://vm0.neocities.org/block-jumper.html)

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
  removeAll("site-footer")
  setTimeout(function() {                       
    forAllByClass("project-name",
      function(pn) { pn.innerText = "Vivek Myers" })
  }, 1)
</script>
