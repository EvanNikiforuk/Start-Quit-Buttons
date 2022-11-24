//Global Variables
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, yellow=#FFFF00 , red=#FF0000 ;
//
void setup()
{
  size (400, 300); //Landscape
  //fullScreen(); //displayWidth, displayHeight
  displayOrientation();
  appWidth = width; 
  appHeight = height;
  population();
} //End setup
//
void draw()
{
  if ( noNowReallyStart==true ) { //Actual start IF
    programDraw();
  } //End IF-STart
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
} //End mousePressed
//
//End Main Program
