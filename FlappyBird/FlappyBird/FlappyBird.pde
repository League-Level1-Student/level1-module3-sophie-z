int birdX = 200;
int birdY = 250;
int birdYvelocity = 30;
int gravity = 1;
int pipeX = 100;
int pipeY = 0;
int pipeGap = 120;
int upperPipeHeight = (int) random(100, 400);
boolean gameOver = false;
int score = 0;
void setup(){
size(400, 500);
}
void draw(){
if(gameOver == false){
background(#25C6F5);
stroke(#000000);
fill(#F5EB25);
ellipse(birdX, birdY, 25, 25);
for(int i = 0; i<100; i++);{
birdY = birdY + 2;
}
if(mousePressed){
birdY = birdY - 12;
}
fill(#18D843);
rect(pipeX, pipeY, 50, upperPipeHeight);
pipeX = pipeX + 1;
rect(pipeX, upperPipeHeight + pipeGap, 50, 340);
pipeX = pipeX + 1;
if(pipeX >= 400){
teleportPipes();
}
if(intersectsPipes() == true || birdY >= 500){
  gameOver = true;
}
}
else{
background(#5C1C8B);
text("GAME OVER", 150, 250);
}
}
void teleportPipes(){
  upperPipeHeight = (int) random(100, 400);
  pipeX = 0;
  pipeY = 0;
}
boolean intersectsPipes() {
  if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+50)){
          return true; }
     else if (birdY>upperPipeHeight + pipeGap && birdX > pipeX && birdX < (pipeX+50)) {
          return true; }
     else { return false; }
}
