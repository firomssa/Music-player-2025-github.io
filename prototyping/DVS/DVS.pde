PFont titleFont, textFont;

void setup() {
  fullScreen();
  titleFont = createFont("Arial Bold", 40);
  textFont = createFont("Arial", 20);
  noStroke();
}

void draw() {
  background(200, 220, 255);  // plain background color

  float margin = width * 0.05;
  float imgSize = height * 0.4;
  float panelWidth = width * 0.55;
  float sectionHeight = height * 0.12;
  float bottomHeight = height * 0.08;

  // --- Album Art Box ---
  fill(255);
  rect(margin, margin, imgSize, imgSize);
  fill(0);
  textAlign(CENTER, CENTER);
  textFont(textFont);
  text("Album Art", margin + imgSize / 2, margin + imgSize / 2);

  // --- Song Info Box ---
  fill(255);
  rect(margin + imgSize + 40, margin, panelWidth, imgSize);
  fill(0);
  textAlign(LEFT, TOP);
  textFont(titleFont);
  text("Song Title", margin + imgSize + 60, margin + 20);
  textFont(textFont);
  text("Artist Name\nAlbum: Example Album\nYear: 2025", margin + imgSize + 60, margin + 100);

  // --- Next Songs ---
  float nextY = margin + imgSize + 80;
  float boxW = width * 0.4;
  float boxH = sectionHeight;
  fill(255);
  rect(margin, nextY, boxW, boxH);
  fill(0);
  text("Next Song 1", margin + 20, nextY + 20);

  fill(255);
  rect(margin, nextY + boxH + 20, boxW, boxH);
  fill(0);
  text("Next Song 2", margin + 20, nextY + boxH + 40);

  // --- Rating / Info Box ---
  float rightX = width - margin - boxW;
  fill(255);
  rect(rightX, nextY, boxW, boxH);
  fill(0);
  text("Rating: ★★★★☆", rightX + 20, nextY + 20);
  text("Duration: 3:45", rightX + 20, nextY + 50);

  // --- Artist Box ---
  fill(255);
  rect(rightX, nextY + boxH + 20, boxW, boxH);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Artist Picture", rightX + boxW / 2, nextY + boxH + 20 + boxH / 2);

  // --- Bottom Controls ---
  fill(255);
  rect(margin, height - bottomHeight - margin, width - 2 * margin, bottomHeight);
  fill(0);
  textAlign(CENTER, CENTER);
  text("⏮  ⏪  ▶  ⏸  ⏩  ⏭", width / 2, height - bottomHeight / 2 - margin);
}

