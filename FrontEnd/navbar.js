var navbar;
var nav;

function setup() {
  navbar = selectAll('.navbar'); //selects an array of all navbar class elements
  for (var i = 0; i < navbar.length; i++) { //loops through them
    navbar[i].mouseOver(over); //lightens when moused over
    navbar[i].mouseOut(out); //darkens when mouse out
  }
  nav = select("nav")
  windowResized();
}

function windowResized() { //if the window is resized
  nav.style("width", ((windowWidth) + "px"))
}

function over() {
  this.style('background-color', '#22c');
}

function out() {
  this.style('background-color', '#00a');
}