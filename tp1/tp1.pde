PImage ye;
void setup (){
  size(800,400);
  ye = loadImage ("yealbum.jpg");
}
void draw () {
  println("x:");
  println(mouseX);
  println("Y:");
  println(mouseY);
  background (150);
  image(ye, 0, 0);
  fill(16,26,33);
  rect(400, 350, 400, 50);
  fill(28,46,58);
  rect(400, 287, 400, 63);
  fill(16,31,47);
  rect(400, 283, 400, 4);
  fill(16,31,47);
  rect(400, 256, 400, 27);
  fill(27,44,60);
  rect(400, 268, 400, 4);
  fill(26,50,77);
  noStroke();
  rect(400, 212, 400, 44);
  fill(26,50,77);
  noStroke();
 
  fill(200);
  rect(400,0,400,180);
  fill(245);
  rect(400,0,400,112);

   fill(69,90,117);
  noStroke();
  triangle(400,212,449,139,488,212);
  triangle(488,212,517,124,561,212);
  triangle(561,212,632,89,705,212);
  triangle(705,212,753,137,800,212);  
}
