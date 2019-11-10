int frogX = 400;
int frogY = 570;

Car car1 = new Car(600, 450, 5);
Car car2  = new Car(500, 300, 5);
Car car3 = new Car(400, 150, 5);
void setup(){
  size(800, 600);
}
void draw(){
  background(#23AFF7);
  fill(#2EE359);
  ellipse(frogX, frogY, 30, 30);
  car1.moveLeft();
  car1.display();
  intersects(car1);
  car2.moveRight();
  car2.display();
  intersects(car2);
  car3.moveLeft();
  car3.display();
  print(intersects(car3));
  
  if(intersects(car1)){
  frogX = 400;
  frogY = 570;
  }
  if(intersects(car2)){
  
  frogX = 400;
  frogY = 570;
  }
  if(intersects(car3)){
  frogX = 400;
  frogY = 570;
  }
}
void keyPressed(){
      if(key == CODED){
            if(keyCode == UP && frogY>0)
            {
               frogY = frogY-7;    
              //Frog Y position goes up
            }
            else if(keyCode == DOWN && frogY<600)
            {
                 frogY = frogY+7;
              //Frog Y position goes down
            }
            else if(keyCode == RIGHT && frogX<800)
            {
                 frogX = frogX+7; 
              //Frog X position goes right
            }
            else if(keyCode == LEFT && frogX>0)
            {
                  frogX = frogX-7;
              //Frog X position goes left
            }
      }
}
boolean intersects(Car car) {
      if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
      {
             return true;
      }
      else
      {
             return false;
      }
}
class Car{
int carX = 0;
int carY = 0;
int carSpeed = 1;
int size = 50;

void moveLeft(){
carX = carX - carSpeed;
if(carX<=0){
  carX = 800;
}
}

void moveRight(){
  carX = carX + carSpeed;
  if(carX>=800){
    carX = 0;
  }
}

Car(int carX, int carY, int carSpeed){
  this.carX= carX;
  this.carY = carY;
  this.carSpeed = carSpeed;
  size = 50;
}

void display(){
      fill(#FF8000);
      rect(carX, carY, size, size);
}

int getX(){
  return carX;
}

int getY(){
  return carY;
}

int getSize(){
  return size;
}
}
