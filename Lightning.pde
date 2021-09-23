int startX=0;
  int startY=150;
  int endX=0;
  int endY=150;

void setup(){
  size(300,300);
  strokeWeight(3);
  background(0,0,0);
  fill(255,0,0);
  rect(290,140,10,20);
}

void draw(){
  stroke(255, 255, 255);
  while(endX<300){
    endX=startX+(int)((Math.random())*20);
    endY=startY+(int)((Math.random())*29)-15;
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY;
    if(endX>290&&endX<300&&endY>140&&endY<160){
      textAlign(CENTER);
      text("Congratulation! You hit the target!", 150,150);
    }
  }
}

void mousePressed(){
startX=0;
startY=150;
endX=0;
endY=150;
}
