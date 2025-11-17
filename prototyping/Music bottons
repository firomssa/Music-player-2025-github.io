// Labels for buttons
String[] labels = {">", "||", "[]", ">>", "<<", ">>>", "<<<", "VOL+", "VOL-", "RPT", "SHF"};

float y;  // vertical position

void setup() {
  size(900, 200);
  textSize(32);
  textAlign(CENTER, CENTER);

  y = height / 2;
}

void draw() {
  background(255);

  // calculate spacing dynamically to fill screen nicely
  float spacing = width / (labels.length + 1);

  for (int i = 0; i < labels.length; i++) {
    float x = spacing * (i + 1); // start from 1*spacing to avoid edge
    fill(0);
    text(labels[i], x, y);
  }
}

// detect clicks
void mousePressed() {
  float spacing = width / (labels.length + 1);
  for (int i = 0; i < labels.length; i++) {
    float x = spacing * (i + 1);
    float textW = textWidth(labels[i]);
    float textH = textAscent() + textDescent();
    if (mouseX > x - textW/2 && mouseX < x + textW/2 &&
        mouseY > y - textH/2 && mouseY < y + textH/2) {
      println("Clicked: " + labels[i]);
    }
  }
}
