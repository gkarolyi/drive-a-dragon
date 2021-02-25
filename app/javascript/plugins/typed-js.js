// Can also be included with a regular script tag
import Typed from "typed.js";

/* var options = {
  strings: ["<i>First</i> sentence.", "&amp; a second sentence."],
  typeSpeed: 40,
}; */

const typed = new Typed("#typed", {
  stringsElement: "#typed-strings",
  typeSpeed: 40,
});

export { typed };
