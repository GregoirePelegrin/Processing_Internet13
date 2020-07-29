int n;
float d;
float coeffMult;

float angleRotate;

void setup(){
  size(600, 600);
  frameRate(30);
  
  n = 3;
  d = 47;
  
  angleRotate = 0;
  
  coeffMult = min(width/2, height/2);
}

void draw(){
  background(0);
  noFill();
  
  float radius;
  float angle;
  
  stroke(127, 0, 127, 75);
  strokeWeight(1);
  beginShape();
  for(int k=0; k<361; k++){
    radius = coeffMult * sin(radians(n*k*d));
    angle = radians(k*d);
    vertex(width/2 + radius*cos(angle+radians(angleRotate)), height/2 + radius*sin(angle+radians(angleRotate)));
  }
  endShape();
  
  stroke(255, 100);
  strokeWeight(3);
  beginShape();
  for(int k=0; k<361; k++){
    radius = coeffMult * sin(radians(n*k));
    angle = radians(k);
    vertex(width/2 + radius*cos(angle+radians(angleRotate)), height/2 + radius*sin(angle+radians(angleRotate)));
  }
  endShape();
  
  angleRotate++;
}
