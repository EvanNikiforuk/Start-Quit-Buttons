void quitButtonDraw() {
  fill(quitButtonColour);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );//Quit Button
  //
  textSize(70);
  fill(0);
  text( boxText, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  //
}//End quitButtonDraw
