void setBackground(color colour) {
  stroke(colour);
  fill(colour);
  rect(0, 0, 800, 600);
  fill(white);
  rect(width/2-10, 0, 20, 600);
}

void bounce() {
  if(Math.abs(vx)<=4){
    if(vx<0){
      vx-=1;
    }else if(vx>0){
      vx+=1;
    }
  }
  
  if (dist(rightx, righty, ballx, bally)<(balld/2+rightd/2)) {
    vx=(ballx-rightx)/30;
    vy=(bally-righty)/30;
    bump.rewind();
    bump.play();
  }
  if (dist(ballx, bally, leftx, lefty)<(balld/2+leftd/2)) {
    vx=(ballx-leftx)/30;
    vy=(bally-lefty)/30;
    bump.rewind();
    bump.play();
  }
  
  if (bally<balld/2 || bally>600-(balld/2)) {
      vx=-vx;
      vy=-vy;
  }
}

void moveBall() {
  if(timer>0){
    ballx+=vx;
    bally+=vy;
  }
}

void score(){
  if (ballx<0){
    rightscore++;
    ballx=width/2;
    bally=height/2;
    timer=100;
    coin.rewind();
    coin.play();
  }
  if (ballx>800){
    leftscore++;
    ballx=width/2;
    bally=height/2;
    timer=100;
    coin.rewind();
    coin.play();
  }
}

boolean tactile(int x, int y, int w, int h){
  if (mouseX>x && mouseX< x+w && mouseY>y && mouseY<y+h){
    return true;
  }
  return false;
}
