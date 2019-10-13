int birdX = 200;
int birdY = 250;
int birdYvelocity = 30;
int gravity = 1;
void setup(){
size(400, 500);
}
void draw(){
background(#25C6F5);
stroke(#000000);
fill(#F5EB25);
ellipse(birdX, birdY, 30, 30);
for(int i = 0; i<100; i++);{
birdY = birdY + 2;
ellipse(birdX, birdY, 30, 30);
}
}
