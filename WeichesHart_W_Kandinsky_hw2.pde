// Week 2 assignment.
// Created by SU & Oscar on 09/12/2012
// use git
// edit in the github
// -------------------------------------


// Questions
// -------------------------------------
// 
// -------------------------------------

// Difficulties
// -------------------------------------
//
// -------------------------------------

// Setup the canvas size & background.
// -------------------------------------
void setup() {
  size(400, 280); 
//  background(95, 142, 162);???????????
  noSmooth();
}
// END ---------------------------------

void draw(){
  float x = mouseX;
  float y = mouseY;
  background(95, 142, 162);
// The left eye.
// -------------------------------------
fill(240, 147, 8);
noStroke();
rect(20, 5, 54, 9);

// Outside ellipse.
fill(6, 115, 160, 230);
stroke(0);
strokeWeight(5);
ellipse(mouseX, mouseY, 130, 130);

// Color the eye.
//colorMode(RGB,  26,38,64);??????????
//I draw severial ellipse(with alpha) 
//in the area of the outside ellipse.
//center.x = 96
//center.y = 133
//radius.max = 65
//radius range = [5,63) --> iteration i
//angle A range = [0, TWO_PI)-- iteration j
//alpha range = [0,100] --> random
//newPoint.x = center.x + sin(A)*radius
//newPoint.y = center.y + cos(A)*radius
for (int i=0; i<63; i=i+4) {
  for (float j=0; j<TWO_PI; j = j + TWO_PI/180) {
    float alph = random(100);
    fill(#dbbd87, alph);
    noStroke();
    float a = mouseX + sin(j) * i;
    float b = mouseY + cos(j) * i;
    ellipse(a, b, 4, 4);
  }
}

fill(0, 220);
stroke(0);
strokeWeight(2);
triangle(40+x/1.5, 47+y/4, 158+x/1.5, 46+y/2, 96+x/3, 133+y/2);

fill(0, 220);
stroke(0);
strokeWeight(2);
triangle(63+x/4.2, 270+y/2, 127+x/4.2, 270+y/2, 96+x/4.2, 133+y/2);

// Inside ellipse.
fill(#111727, 220);
noStroke();
ellipse(mouseX, mouseY, 48, 48);
// END ---------------------------------


// The middle triangles.
// -------------------------------------
fill(0);
noStroke();
triangle(174+x/1.6, 135+y/1.6, 152+x/2.6, 175+y/2.6, 196+x/2.6, 175+y/2.6);

fill(0);
noStroke();
triangle(174+y/2.1, 175+x/2.6, 158+y/1.1, 216+x/1.6, 190+y/2.1, 216+x/2.6);

fill(0);
noStroke();
triangle(174*x/100, 216*y/100, 161*x/100, 259*y/100, 187*x/100, 259*y/100);
// END ---------------------------------


// The top right triangles & curves.
// -------------------------------------
// The quad.
fill(#811704);
noStroke();
quad(228, 36, 258, 46, 248, 76, 218, 66);

// The big triangle.
fill(#cb220b);
stroke(#811704);
strokeWeight(1);
triangle(300*x/200, 5*y/100, 205*x/200, 182*y/100, 300*x/200, 182*y/100);

// The triangles & rect to the right of big triangle.
fill(#a11f00);
noStroke();
rect(300+x/4.5, 106+y/2, 60+x/2, 35+y/3);

fill(0);
noStroke();
triangle(300-x/10, 106-y/7, 300-x/12, 141-y/8, 360-x/9, 141-x/5);

fill(255);
noStroke();
rect(300-x/3, 146-y/2, 77-x/1.6, 7-y/2);

fill(#f9a000);
noStroke();
triangle(300+y/9, 159+x/9, 322+x/15, 159+y/15, 300+y/6, 172+x/6);

fill(#a11f00);
noStroke();
triangle(300-x/7, 172-y/6, 300-x/6, 182-y/7, 316-x/5.5, 172-y/8);

fill(0);
noStroke();
triangle(332, 162, 360, 162, 346, 188);

// The curves.
fill(#fd8d03);
noStroke();
beginShape();
vertex(347+x/3.5, 21+y/2);
bezierVertex(344, 35, 322, 55, 300, 52);
bezierVertex(300, 46, 300, 52, 300, 46);
bezierVertex(312, 47, 335, 43, 347+x/3.5, 21+y/2);
endShape();

fill(#d06225);
noStroke();
beginShape();
vertex(374+y/5, 16+x/5);
bezierVertex(377, 62, 340, 89, 300, 75);
bezierVertex(300, 69, 300, 75, 300, 69);
bezierVertex(319, 75, 366, 78, 374, 16);
endShape();
// END ---------------------------------


// The bottom right triangles & curves.
// -------------------------------------
// The triangle.
fill(#e14a03);
noStroke();
triangle(241+y/6, 190+x/6, 383+x/6, 190+y/9, 312+x/10, 261+y/8);

// The curve.
fill(#0a1123, 225);
noStroke();
beginShape();
vertex(245+x/15, 275+y/15);
bezierVertex(275+x/7, 214+y/7, 346+x/7, 214+y/7, 375+x/7, 275+y/7);
bezierVertex(332+x/7, 236+y/7, 287+x/7, 236+y/7, 245+x/7, 275+y/7);
endShape();
// END ---------------------------------
}
