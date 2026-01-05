/* String
 */
//
//Display
fullScreen(); //Landscape
size(500, 100); 
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//
//Population
float stringDivX = appWidth*2/8;
float stringDivY = appHeight*2/20;
float stringDivWidth = appWidth*2/4;
float stringDivHeight = appHeight*2/20; 
//
//Strings, Text, Literal
String title = "WhatUuuuup!";
//
float fontSize = appHeight; 
PFont titleFont; 
String NSimSun = "NSimSun"; 
titleFont = createFont(NSimSun, fontSize);
//
println(fontSize, NSimSun, titleFont); 
float fontSizeNSimSun = 85.0; 
//Hardcoded fontSizeNSimSun
println("Font Size:", fontSize );
float NSimSunAspectRatio = fontSizeNSimSun / stringDivHeight;
fontSize = stringDivHeight*NSimSunAspectRatio;
println("NSimSun Aspect Ratio:", NSimSunAspectRatio);
println();
//
rect( stringDivX, stringDivY, stringDivWidth, stringDivHeight );
color purpleInk = #2C08FF;
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(purpleInk);
textAlign(CENTER,CENTER);
//
//
//drawing text
//ERROR checkfontsize, decreasing the text when wrapped or not shown
textFont(titleFont, fontSize); 
float constantDecrease = 0.99;
while (textWidth() > StringivWidth ) {
//
//
textFont(titleFont, fontSize); 

//
text( title, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
fill(resetInk);
//
//End Program
