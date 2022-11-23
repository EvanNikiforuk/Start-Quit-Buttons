//Global Variables
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
int quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void setup()
{
  size (400, 300);
  //fullscreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  //
  //Population
  quitButtonX = appWidth * 1/4;
  quitButtonY = appHeight * 1/4;
  quitButtonWidth = appWidth * 10/20;
  quitButtonHeight = appHeight * 10/20;
} //End setup
//
void draw()
{
  if ( noNowReallyStart==true ) { //Actual start IF
    background(0); //Night Mode not considered yet
    rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight ); //Quit Button
  } //End IF-Sart
  //
} //End draw
//
void keyPressed()
{
  //
  if ( key==' ' && start==true ) noNowReallyStart = true;
  //
  //Prototype Key Board Quit Button OR shortcut
  if ( key=='Q' || key=='q' ) exit();{
    rect(50,50,100,50);
  }
  if ( keyCode == ESC ) exit();{
    rect(50,50,100,50);
  }
  //
} //End keyPressed
//
void mousePressed()
{
  //
  //Os Level Start Button
  start = true;
  println("To Start, Press Left/Right mouse button then Press the Space bar");
  //
} //End keyPreesed
//
//End Main Program
