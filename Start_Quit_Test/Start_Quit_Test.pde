//Global Variables
int appWidth, appHeight, fontSize;
Boolean start=false, noNowReallyStart=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float quitMenuX, quitMenuY, quitMenuWidth, quitMenuHeight;
float quitYesMenuX, quitYesMenuY, quitYesMenuWidth, quitYesMenuHeight;
float quitNoMenuX, quitNoMenuY, quitNoMenuWidth, quitNoMenuHeight;
color quitButtonColour, yellow=#FFFF00, red=#FF0000 ;
String MenuText="Are You Sure You Want To Quit?", MenuYesText="YES", MenuNoText="NO";
PFont titleFont;
//
void setup()
{
  //Display & ALgorithms not considered yet
  size (400, 300); //Landscape
  //fullScreen(); //displayWidth, displayHeight
  appWidth = width; 
  appHeight = height;
  //
  //Population
  float centerX = appWidth * 1/2; //Point
  float centerY = appHeight * 1/2; //Point
  quitButtonX = centerX - ( appWidth * 1/4 );
  quitButtonY = centerY - ( appHeight * 1/4 );
  quitButtonWidth = appWidth * 1/2; //Line not point, thus use formula
  quitButtonHeight = appHeight * 1/2; //Line not point, thus use formula
  //
  quitMenuX = appWidth * 0.5/4;
  quitMenuY = appHeight * 0.5/4;
  quitMenuWidth = appWidth * 7.5/10;
  quitMenuHeight = appHeight * 7.5/10;
  //
  quitYesMenuX = appWidth * 0.5/4;
  quitYesMenuY = appHeight * 2.5/4;
  quitYesMenuWidth = appWidth * 3.75/10;
  quitYesMenuHeight = appHeight * 2.5/10;
  //
  quitNoMenuX = appWidth * 2/4;
  quitNoMenuY = appHeight * 2.5/4;
  quitNoMenuWidth = appWidth * 3.75/10;
  quitNoMenuHeight = appHeight * 2.5/10;
  //
  titleFont = createFont("Sitka Text", 55);
  //
} //End setup
//
void draw()
{
  if ( noNowReallyStart==true ) { //Actual start IF
    background(0); //Night Mode not considered yet
    //
    //Logical Rectangle
    println("X-Value", quitMenuX, mouseX, quitMenuX+quitMenuWidth);
    println("Y-Value", quitMenuY, mouseY, quitMenuY+quitMenuHeight);
    //Quit Button Hover Over Feature
    if ( noNowReallyStart==true && mouseX>quitYesMenuX && mouseX<quitYesMenuX+quitYesMenuWidth && mouseY>quitYesMenuY && mouseY<quitYesMenuY+quitYesMenuHeight ) {
      quitButtonColour = red; //remember Night mode
    } else {
      quitButtonColour = yellow; //Remember day Mode
    } //End Hover Over
    fill(quitButtonColour);
    rect(quitYesMenuX, quitYesMenuY, quitYesMenuWidth, quitYesMenuHeight);
    //
  } //End IF-STart
  //
  if ( key=='Q' || key=='q' ) {
    fill(255);
    rect(quitMenuX, quitMenuY, quitMenuWidth, quitMenuHeight);
    rect(quitYesMenuX, quitYesMenuY, quitYesMenuWidth, quitYesMenuHeight);
    rect(quitNoMenuX, quitNoMenuY, quitNoMenuWidth, quitNoMenuHeight);
    //
    textSize(35);
    fill(0);
    text( MenuText, quitMenuX, quitMenuY, quitMenuWidth, quitMenuHeight );
    textAlign(CENTER, BASELINE); //Align X&Y, see Processing.org / Reference
    //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
    fill(0);
    text( MenuYesText, quitYesMenuX, quitYesMenuY, quitYesMenuWidth, quitYesMenuHeight );
    textAlign(CENTER, BASELINE); //Align X&Y, see Processing.org / Reference
    //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
    fill(0);
    text( MenuNoText, quitNoMenuX, quitNoMenuY, quitNoMenuWidth, quitNoMenuHeight );
    textAlign(CENTER, BASELINE); //Align X&Y, see Processing.org / Reference
    //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  }
  if ( keyCode == ESC ) {
    fill(255);
    rect(quitMenuX, quitMenuY, quitMenuWidth, quitMenuHeight);
  }
} //End draw
//
void keyPressed()
{
  //
  if ( key==' ' && start==true ) noNowReallyStart = true;
  //
  //Prototype Key Board Quit Button OR shortcut
  //if q esc
  //
} //End keyPressed
//
void mousePressed()
{
  //
  //OS Level Start Button
  start = true;
  println("To Start, Press the Space Bar");
  //
  //Quit Button: Logical Rectangle, see println in draw()
  //
  if (noNowReallyStart==true && mouseX>quitYesMenuX && mouseX<quitYesMenuX+quitYesMenuWidth && mouseY>quitYesMenuY && mouseY<quitYesMenuY+quitYesMenuHeight) exit();
  //
  if (noNowReallyStart==true && mouseX>quitNoMenuX && mouseX<quitNoMenuX+quitNoMenuWidth && mouseY>quitNoMenuY && mouseY<quitNoMenuY+quitNoMenuHeight) {
    
  }
} //End mousePressed
//
//End Main Program
