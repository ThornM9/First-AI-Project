Population test;
PVector goal = new PVector (400,10);
Obstacle[] obstacles;

void setup(){
 size(800,800);
 frameRate(200);
 test = new Population(1000);
 
 obstacles = new Obstacle[5];
 for(int i = 1; i < 5; i++) {
     obstacles[i] = new Obstacle((int)(Math.random() * 800 + 1), height-(i*150), 400, 10);
     obstacles[i].show();
 }
}

void draw(){
 background(255);
 fill(255,0,0);
 ellipse(goal.x, goal.y, 10, 10);
 
 for(int i = 1; i < 5; i++) {
     obstacles[i].update();
 }
 
 if (test.allDotsDead()) {
   test.calculateFitness();
   test.naturalSelection();
   test.mutateChildren();
 }
 test.update();
 test.show();
}
