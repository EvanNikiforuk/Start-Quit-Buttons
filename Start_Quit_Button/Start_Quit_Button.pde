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
  quitButtonX = ;
  quitButtonY = ;
  quitButtonWidth = ;
  quitButtonHeight = ;
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
  if ( key=='Q' || key=='q' ) exit(); //{};
  if ( keyCode == ESC ) exit(); //{};
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
