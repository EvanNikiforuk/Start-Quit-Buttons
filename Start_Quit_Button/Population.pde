void population() {
  //Population
  areYouSurePic = loadImage("../Images Used/are-you-sure.png");
  yesPic = loadImage("../Images Used/featured-image-yes.jpg");
  noPic = loadImage("../Images Used/download.png");
  //
  quitButtonX = displayWidth * 3/4;
  quitButtonY = displayHeight * 3/4;
  quitButtonWidth = displayWidth * 3/10; //Line not point, thus use formula
  quitButtonHeight = displayHeight * 3/10; //Line not point, thus use formula
  //
  quitMenuX = displayWidth * 0.5/4;
  quitMenuY = displayHeight * 0.5/4;
  quitMenuWidth = displayWidth * 7.5/10;
  quitMenuHeight = displayHeight * 7.5/10;
  //
  quitYesMenuX = displayWidth * 0.5/4;
  quitYesMenuY = displayHeight * 2.5/4;
  quitYesMenuWidth = displayWidth * 3.75/10;
  quitYesMenuHeight = displayHeight * 2.5/10;
  //
  quitNoMenuX = displayWidth * 2/4;
  quitNoMenuY = displayHeight * 2.5/4;
  quitNoMenuWidth = displayWidth * 3.75/10;
  quitNoMenuHeight = displayHeight * 2.5/10;
  //
  barX = displayWidth * 0.5/4;
  barY = displayHeight * 0.5/4;
  barWidth = displayWidth * 3/4;
  barHeight = displayHeight * 0.5/4;
  //
  titleFont = createFont("Sitka Text", 55); 
  //
}//End population
