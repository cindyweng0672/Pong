void intro(){
  background(yellow);
  textFont(up);
  
  
  //text-pong
  textSize(70);
  fill(black);
  textAlign(CENTER, CENTER);
  text("PONG", x, height/2);
  
  x+=v;
  if (x>700 || x<100){
    v=-v;
  }
  
  //one player button
  fill(white);
  rect(150, 400, 200, 75);
  
  //two player button
  fill(white);
  rect(450, 400, 200, 75);
  
  //tactile
  lefton=tactile(150, 400, 200, 75);
  righton=tactile(450, 400, 200, 75);
  
  if (lefton==false){
    strokeWeight(5);
    stroke(black);
    rect(150, 400, 200, 75);
  }else{
    strokeWeight(5);
    stroke(red);
    rect(150, 400, 200, 75);
  }
  
  if (righton==false){
    strokeWeight(5);
    stroke(black);
    rect(450, 400, 200, 75);
  }else{
    strokeWeight(5);
    stroke(red);
    rect(450, 400, 200, 75);
  }
  
  //one player text
  fill(black);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("One Player", 250, 437);
  
  //two player text
  fill(black);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Two Player", 550, 437);
}

void introClicks(){
  if(mouseX>150 && mouseX<350 && mouseY>400 && mouseY<475){
    mode=GAME;
    onePlayer=true;
  }else if(mouseX>450 && mouseX<650 && mouseY>400 && mouseY<475){
    onePlayer=false;
    mode=GAME;
  }
}

  /*if(mouseX>150 && mouseX<250 && mouseY>400 && mouseY<437){
    stroke(red);
    strokeWeight(15);
    rect(150, 400, 200, 75);
  }else if(mouseX>450 && mouseX<650 && mouseY>400 && mouseY<475){
    stroke(red);
    strokeWeight(15);
    rect(450, 400, 200, 75);
  }*/
