/* Program Documentation & Notes
 - Largest Square Display Possible on any DISPLAY
 
 - Using Display to Alter CANVAS size() with local variable
 - Unique example increasing awareness
 - Reading DOCUMENTATION is required
 
 - See: https://processing.org/reference/settings_.html
 - Simple Example Included there
 */
//Library - Minim
//
//Global Variables
//
void settings() {
  println(displayWidth, displayHeight);
  int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth ; //Ternary Operator
  shorterSide *= 0.9; //90%, WINDOW Frame
  size(shorterSide, shorterSide); //ERROR IllegalStateException: cannot use a var in size()
  println("Display Questions", displayWidth, displayHeight, shorterSide);
  println("CANVAS Size Key Variables for setup()", width, height);
} //End settings
//
void setup() {
  /* ERROR IllegalStateException: cannot use a var in size()
   println(displayWidth, displayHeight);
   int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth ; //Ternary Operator
   size(shorterSide, shorterSide); //
   */
  //fullScreen(); //displayWidth, displayHeight
} //End setup
//
void draw() {} //End draw
//
void mousePressed() {} //End Mouse Pressed
//
void keyPressed() {} //End Key Pressed
//
//End MAIN Program
