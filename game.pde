void game() {
  setBackground(green);
  //paddles
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);

  //ball
  strokeWeight(0);
  stroke(white);
  circle(ballx, bally, balld);

  //stop paddles 
  if (lefty<balld) {
    lefty=balld;
  }
  if (lefty>height-balld) {
    lefty=height-balld;
  }
  if (righty<balld) {
    righty=balld;
  }
  if (righty>height-balld) {
    righty=height-balld;
  }

  //move paddles 
  if (wkey==true) {
    lefty=lefty-5;
  }
  if (skey==true) {
    lefty=lefty+5;
  }

  if (onePlayer==false) {
    if (upkey==true) {
      righty=righty-5;
    }
    if (downkey==true) {
      righty=righty+5;
    }
  }
  
  if (onePlayer==true){
    if (bally>righty){
      righty+=random(1, 3);
    }
    if(bally<righty){
      righty-=random(1,3);
    }
  }

  //score
  textSize(50);
  fill(black);
  text(leftscore, width/4, 100);
  text(rightscore, width/4*3, 100);
  text(timer, width/4*3, 550);
  if (mode==GAME) {
    if (timer>0) {
      timer=timer-1;
    }
  }

  //move ball
  moveBall();

  //bounce
  bounce();

  //scoring
  score();

  if (rightscore<3 && leftscore<3 && timer==0){
    timer=1000;
    ballx=width/2;
    bally=height/2;
  }else if (timer==0) {
    mode=GAMEOVER;
  }
  
  //win
  if (rightscore==3){
    mode=GAMEOVER;
  }
  if (leftscore==3){
    mode=GAMEOVER;
  }
}
//ballx<(balld/2) && ballx>(800-(balld/2)) && bally<(balld/2) && (bally>600-(balld/2))

void gameClicks() {
  mode=PAUSE;
}
