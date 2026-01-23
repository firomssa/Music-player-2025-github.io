/* Text
 - Easy Text, default font, size
 - TBA
 */
//Global Variables
String songTitle;
//
void easyTextQuitButton() {
  //Note: rect() starts top-right corner, text() starts bottom-right corner
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5); //adjust fractions or decimals until working
} //End Easy Text
//
void textSetup() {
  /*Fonts from OS
   println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   //Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
   //Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
   */
  float fontSize = appHeight;
  PFont titleFont;
  String harrington = "Harrington";
  titleFont = createFont(harrington, fontSize);
  //
  float fontSizeHarrington = 83.0;
 // float harringtonAspectRatio = fontSizeHarrington / stringDivHeight;
  //fontSize = stringDivHeight*harringtonAspectRatio;
  //
} //End Text Setup
//
//End Subprogram Text
