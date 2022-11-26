//Global Variables
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float quitMenuX, quitMenuY, quitMenuWidth, quitMenuHeight;
float quitYesMenuX, quitYesMenuY, quitYesMenuWidth, quitYesMenuHeight;
float quitNoMenuX, quitNoMenuY, quitNoMenuWidth, quitNoMenuHeight;
float barX, barY,barWidth, barHeight;
color quitButtonColour, yellow=#FFFF00 , red=#FF0000 ;
String MenuText="Are You Sure You Want To Quit?", MenuYesText="YES", MenuNoText="NO(Press'N')", boxText="Exit, No Questions Asked", barText="To Start, Press the Space Bar";
PFont titleFont;
PImage areYouSurePic, yesPic, noPic;
//
void setup()
{
  fullScreen(); //Landscape
  //fullScreen(); //displayWidth, displayHeight
  displayOrientation();
  displayWidth = width; 
  displayHeight = height;
  population();
} //End setup
//
void draw()
{
  if ( noNowReallyStart==true ) { //Actual start IF
    programDraw();
  } //End IF-STart
  //
  if (noNowReallyStart==false) {
    fill(0,255,0);
    rect(barX, barY,barWidth, barHeight);
    //
    textSize(100);
    fill(0);
    text( barText, barX, barY,barWidth, barHeight );
    textAlign(CENTER, BASELINE); //Align X&Y, see Processing.org / Reference
    //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  }
  //
  if ( key=='Q' || key=='q' ) {
    fill(100);
    rect(quitMenuX, quitMenuY, quitMenuWidth, quitMenuHeight);
    image(areYouSurePic, quitMenuX, quitMenuY, quitMenuWidth, quitMenuHeight);
    rect(quitYesMenuX, quitYesMenuY, quitYesMenuWidth, quitYesMenuHeight);
    image(yesPic, quitYesMenuX, quitYesMenuY, quitYesMenuWidth, quitYesMenuHeight);
    rect(quitNoMenuX, quitNoMenuY, quitNoMenuWidth, quitNoMenuHeight);
    image(noPic, quitNoMenuX, quitNoMenuY, quitNoMenuWidth, quitNoMenuHeight);
    //
    textSize(50);
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
} //End draw
//
void keyPressed()
{
  //User Initiate Start Screen
  if ( key==' ' && start==true ) noNowReallyStart = true;
  //
  keyBoardShortcuts();
  //
} //End keyPressed
//
void mousePressed()
{
  OS_Start();
  //
  //Quit Button: Logical Rectangle, see println in draw()
  if ( noNowReallyStart==true && mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  //
  if (noNowReallyStart==true && mouseX>quitYesMenuX && mouseX<quitYesMenuX+quitYesMenuWidth && mouseY>quitYesMenuY && mouseY<quitYesMenuY+quitYesMenuHeight) exit();
} //End mousePressed
//
//End Main Program
