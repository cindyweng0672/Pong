void gameOver(){
  theme.pause();
  gameover.play();
  
  background(red);
  fill(white);
  textFont(up);
  textSize(60);
  textAlign(CENTER, CENTER);
  if (leftscore>rightscore){
    text("Left Wins", width/2, height/2);
  }else if (rightscore>leftscore){
    text("Right Wins", width/2, height/2);
  }
  
  fill(red);
  stroke(white);
  strokeWeight(10);
  rect(600, 450, 100, 75);
  rect(450, 450, 100, 75);
  fill(white);
  textSize(15);
  text("replay", 650, 480);
  textSize(20);
  text("exit", 500, 480);
}

void gameOverClicks(){
  if(mouseX>450 && mouseX<550 && mouseY>450 && mouseY<525){
    exit();
  }
  if(mouseX>600 && mouseX<700 && mouseY>450 && mouseY<525){
    leftscore=0;
    rightscore=0;
    mode=INTRO;
  }
}
