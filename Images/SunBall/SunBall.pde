fullScreen(); //Display : Portrait

int appWidth = displayWidth;
int appHeight = displayHeight;

// DIV
float imageDivX = appWidth*3/8.0;
float imageDivY = appHeight*3/8.0;
float imageDivWidth = appWidth*1.5/5.0;
float imageDivHeight = appHeight*1.9/7.90;

// Concatenation
String upArrow = "../../";
String folder = "Images/";
String Sun = "Sun";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + Sun + fileExtensionJPG;
println("Sun Pathway:", imagePathway1);

// Image Loading
PImage image1 = loadImage(imagePathway1);

// get REAL image dimensions
float imageWidth1 = image1.width;
float imageHeight1 = image1.height;

// REAL aspect ratio (always width / height)
float imageAR = imageWidth1 / imageHeight1;
float divAR = imageDivWidth / imageDivHeight;

// compute fitted size (aspect-ratio correct)
float imageWidthAdjusted1;
float imageHeightAdjusted1;

if (imageAR > divAR) {
  // image is wider than div
  imageWidthAdjusted1 = imageDivWidth;
  imageHeightAdjusted1 = imageDivWidth / imageAR;
} else {
  // image is taller (or square)
  imageHeightAdjusted1 = imageDivHeight;
  imageWidthAdjusted1 = imageDivHeight * imageAR;
}

// center inside div
float drawX = imageDivX + (imageDivWidth - imageWidthAdjusted1) / 100;
float drawY = imageDivY + (imageDivHeight - imageHeightAdjusted1) / 200;

// draw div outline
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);

// draw image correctly scaled
image(image1, drawX, drawY, imageWidthAdjusted1, imageHeightAdjusted1);

// End Program
