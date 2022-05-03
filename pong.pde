import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int mode;
int INTRO=0;
int GAME=1;
int PAUSE=2;
int GAMEOVER=3;

//color
color black=#212121;
color white=#FFFFFF;
color green=#328310;
color red=#DB5D5D;
color blue=#506CCB;
color yellow=#FFDF27;
color lightYellow=#FAF2C7;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld;

//score
int leftscore, rightscore, timer;

//move
float vx, vy;
float v=3;

//keyboard variables 
boolean wkey, skey, upkey, downkey;
boolean onePlayer;
boolean righton;
boolean lefton;
 
PFont up;

float x=400;
  
//audio
Minim minim;
AudioPlayer coin, bump, gameover, theme;

void setup(){
  size(800, 600);
  mode=INTRO;
  
//initialize paddles 
  leftx=0;
  lefty=height/2;
  leftd=200;
  
  rightx=width;
  righty=height/2;
  rightd=200;
  
//initialize ball
  ballx=width/2;
  bally=height/2;
  balld=100;
  
//initialize keyboard 
  wkey=skey=upkey=downkey=false;
  
//initialize speed
  vx=random(-3, 3)-5;
  vy=1;
  
  //initialize scores
  leftscore=0;
  rightscore=0;
  timer=1000;
  
  //initilize left right on
  lefton=false;
  righton=false;
  
  //font
  up=createFont("1up.ttf", 20);
  
  //sound
  minim = new Minim(this);
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  theme = minim.loadFile("intro.wav");
  
  //play audio+rewind
  theme.rewind();
  theme.play();
}

void draw(){
  if (mode==INTRO){
    intro();
  }else if (mode==GAME){
    game();
  }else if (mode==PAUSE){
    pause();
  }else if(mode==GAMEOVER){
    gameOver();
  }else{
    println("Mode Error:"+mode);
  }
}
