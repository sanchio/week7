// this sketch creates 10 instances of a ball class. 
// it does this in the setup() function in a loop instead of 
//  doing it based on mouse presses as we did in class.

// review this approach, then create your own class that draws
//  a different visual to the screen with its own behavior. 
//  it could be abstract or more explicit. think about how to 
//  parameterize your object's constructor. once you've created 
//  a class like this, create a number of instances of your 
//  class on the canvas by any means you prefer.

ArrayList<Ball> balls = new ArrayList<Ball>();
Fish f = new Fish(300,300);
Shark s = new Shark(300,300);


void setup() {
  size(800, 800);
  
  for (int i = 0; i < 10; i++) {
    balls.add(new Ball(random(width), random(height)));
    //Cloud[i] = new Cloud(random(width), random(height));
  }
  
  
  Shark = loadImage("shark.png");
  
}

void draw() {
  background(0,200,255);
  for (int i = 0; i < balls.size(); i++) {
    Ball ball = balls.get(i);
    noStroke();
    fill(255,255,255,100);
    ball.display();
    ball.update();

f.display();
f.update();



 
  
  s.update();
  s.display();
}
}


class Ball {
  // what does it have and do? 
  // create the variables
  // position x,y
  // velocity x,y
  float posX;
  float posY;
  float velX;
  float velY;
  float size;

  // create the constructor
  Ball(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
    this.velX = random(-5, 5);
    this.velY = random(-5, 5);
    this.size = random(50, 200);
  }

  // draw to the screen
  void display() {
    noFill();
    strokeWeight(2);
    stroke(0,100,210,50);
    ellipse(this.posX, this.posY, size, size);
    ellipse(this.posX, this.posY, size, size);
    ellipse(this.posX, this.posY, size, size);
  }

  // update its position and velocity.
  void update() {
    this.posX += this.velX;
    this.posY += this.velY;

    // check if it goes off
    if (this.posX > width-this.size/2 || this.posX < this.size/2) {
      this.velX *= -1;
    }
    if (this.posY > height-this.size/2 || this.posY < this.size/2) {
      this.velY *= -1;
    }
  }
}
 
class Fish {
  float x, y;
  float s;
  
  Fish(float x, float y) {
  this.x = x;
  this.y = y;
  this.s = random(5,10);
  
}

void display() {
  noStroke();
  fill(255, 128,0);
  ellipse(x,y,6*s, 3*s);
  ellipse(x+10,y+100,10*s, 5*s);
  
  //fill(0,20,0);
  //ellipse(x+250,y-100,40*s, 20*s);
  //fill(0);
  //ellipseMode(RIGHT);
  
}


void update() {
  x -= 0.5;
  if (x < 0) {
    x = width;
  }
  



}

}

class Shark {
  float x;
  float y;
  PImage Shark;

  
  Shark(float x, float y) {
    loadImage("shark.png");
    
  }
}
  
  void display() {
    
    image(Shark, x, y, 400, 400);
    
    
    
  }
  
  
  
  
  void update() {
    
    
    
    
    
  }
  
  
  
  
  
