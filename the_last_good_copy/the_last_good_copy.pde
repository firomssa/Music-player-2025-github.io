// 🎶 Creative Music Player UI
// Designed by you + upgraded by ChatGPT 😎

PFont titleFont, textFont;  // renamed to avoid any possible conflicts
float[] bars = new float[20];  // for animated equalizer bars
boolean hoverPlay = false;

void setup() {
  fullScreen();
  titleFont = createFont("Arial Bold", 40);
  textFont = createFont("Arial", 22);
  noStroke();
}

void draw() {
  // --- Background gradient ---
  setGradient(0, 0, width, height, color(25, 25, 112), color(0, 0, 0));

  // --- Animated EQ background ---
  drawEqualizer();

  float margin = width * 0.05;
  float imgSize = height * 0.45;
  float rightPanelWidth = width * 0.55;
  float sectionHeight = height * 0.15;
  float bottomHeight = height * 0.08;

  // --- Album Art ---
  fill(255, 255, 255, 40);
  rect(margin - 10, margin - 10, imgSize + 20, imgSize + 20, 20);
  fill(255);
  rect(margin, margin, imgSize, imgSize, 15);
  fill(0);
  textAlign(CENTER, CENTER);
  textFont(textFont);
  text("🎵 Album Art", margin + imgSize/2, margin + imgSize/2);

  // --- Subtitle / Lyrics / Info panel ---
  fill(255, 255, 255, 40);
  rect(margin + imgSize + 10, margin - 10, rightPanelWidth + 20, imgSize + 20, 20);
  fill(255);
  rect(margin + imgSize + 20, margin, rightPanelWidth, imgSize, 15);
  fill(0);
  textAlign(LEFT, TOP);
  textFont(titleFont);
  text("Subtitle", margin + imgSize + 40, margin + 20);
  textFont(textFont);
  text("- Song lyrics or description here -", margin + imgSize + 40, margin + 80);

  // --- Song Title with Glow ---
  textAlign(CENTER);
  textFont(titleFont);
  fill(255, 200, 100);
  text("Current Song Name", width/2, margin + imgSize + 60);
  fill(255, 255, 255, 90);
  textSize(60);
  text("Current Song Name", width/2 + random(-1,1), margin + imgSize + 60 + random(-1,1));

  // --- Control Icons ---
  textSize(26);
  textFont(textFont);
  fill(255);
  text("⟳     +     👍     ♥", width/2, margin + imgSize + 110);

  // --- Next Songs Section ---
  float nextY = margin + imgSize + 160;
  float boxW = width * 0.4;
  float boxH = sectionHeight;
  drawSongBox(margin, nextY, boxW, boxH, "Next Song 1");
  drawSongBox(margin, nextY + boxH + 30, boxW, boxH, "Next Song 2");

  // --- Song Rating Box ---
  float rightY = nextY;
  fill(255, 255, 255, 40);
  rect(width - margin - boxW - 10, rightY - 10, boxW + 20, boxH + 20, 20);
  fill(255);
  rect(width - margin - boxW, rightY, boxW, boxH, 15);
  fill(0);
  textAlign(LEFT, TOP);
  text("⭐ Song Rating\n📅 Release Date\n⏱ Duration\n🌍 World Rank\n📍 Country", width - margin - boxW + 20, rightY + 15);

  // --- Artist Best Pic Box ---
  fill(255, 255, 255, 40);
  rect(width - margin - boxW - 10, rightY + boxH + 10, boxW + 20, boxH + 20, 20);
  fill(255);
  rect(width - margin - boxW, rightY + boxH + 20, boxW, boxH, 15);
  fill(0);
  textAlign(CENTER, CENTER);
  text("🎤 Artist Best Pic", width - margin - boxW/2, rightY + boxH + 20 + boxH/2);

  // --- Bottom Music Controls ---
  float y = height - bottomHeight;
  textAlign(CENTER, CENTER);
  textFont(titleFont);
  
  // Hover effect on play button
  float playX = width/2;
  float playY = y + bottomHeight/2;
  float d = 80;
  if (dist(mouseX, mouseY, playX, playY) < d/2) {
    hoverPlay = true;
    fill(255, 200, 0);
    cursor(HAND);
  } else {
    hoverPlay = false;
    fill(255);
    cursor(ARROW);
  }
  
  text("⏮   ⏪   ▶   ⏸   ⏩   ⏭   🔀", width/2, playY);
}

// ---- Helper: Draw gradient background ----
void setGradient(int x, int y, float w, float h, color c1, color c2) {
  noFill();
  for (int i = y; i <= y + h; i++) {
    float inter = map(i, y, y + h, 0, 1);
    color c = lerpColor(c1, c2, inter);
    stroke(c);
    line(x, i, x + w, i);
  }
}

// ---- Helper: Draw equalizer animation ----
void drawEqualizer() {
  for (int i = 0; i < bars.length; i++) {
    bars[i] = lerp(bars[i], random(20, height * 0.4), 0.1);
    float x = map(i, 0, bars.length, 0, width);
    float w = width / bars.length;
    fill(255, 255, 255, 60);
    rect(x, height - bars[i], w - 2, bars[i]);
  }
}

// ---- Helper: Draw song boxes (next songs) ----
void drawSongBox(float x, float y, float w, float h, String label) {
  fill(255, 255, 255, 40);
  rect(x - 10, y - 10, w + 20, h + 20, 20);
  fill(255);
  rect(x, y, w, h, 15);
  fill(0);
  textAlign(LEFT, TOP);
  textFont(textFont);
  text("🎵 " + label, x + 15, y + 10);
  fill(220);
  rect(x + 15, y + 45, h - 30, h - 30, 10);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Image", x + (h - 30)/2 + 15, y + h/2);
  textAlign(LEFT, TOP);
  text("Artist:\nTrack:\nTime:\nBand:", x + h + 30, y + 45);
  fill(255);
  rect(x + w - 120, y + h/2 - 20, 100, 40, 10);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Change", x + w - 70, y + h/2);
}
