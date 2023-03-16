import oscP5.*;
import netP5.*;
OscP5 oscServer;

int bgcolour;

void setup() {
  size(500,500);
  bgcolour = 0;
  colorMode(HSB);
  background(bgcolour,255,255);

  oscServer = new OscP5(this,3000);
  oscServer.plug(this,"noteHandler","/note");
}

public void noteHandler(int note) {
  println ("Note: " + note);
  bgcolour = note * 11 % 255;
}

void draw() {
  background(bgcolour,255,255);
}


