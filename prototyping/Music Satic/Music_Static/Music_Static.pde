/* Library Notes
  - File / Sketch / Import Library / Manage Libraries
  - We use Minim for Sound and Sound Effects
  - Able to Google-search libraries to make your project easier
  - Documentation: https://code.compartmental.net/minim/
  - Specific Class: https://code.compartmental.net/minim/audioplayer_class_audioplayer.html
  - Specific Class: https://code.compartmental.net/minim/audiometadata_class_audiometadata.html
  
  ** You are now able to research any Processing-Java Library ... or Any Java Library from the internet **
  - Processing-Java Libraries must be installed into the IDE
  - Java Libraries simply require the 'import' declaration
*/
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variation
Minim mimim;
int numberOfSong = 1;
int numberOfsoundEffect = 1;
AudioPlayer[] playlist = new AudioPlayer[numberOfSongs];
AudioPlayer[] SoundEffects = new AudioPlayer[numberOfsoundEffects];
int CurrentSong = numberOfSongs - numberOfSongs;
//
//Display
size(700, 500);
int Appwidth = width;
int Appheight = height;
minim = new Minim(this);
String upArrow = '../../../';
String musicfolder = 'music';
String normalFolder = 'Normal';
String groove = 'groove';
String fileExtention_mp3 = '.mp3';
//
String musicDirectory = upArrow + musicfolder +normalfolder

//
//
playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
println('did the music and sound sound load properly');
printArray(playlist);
