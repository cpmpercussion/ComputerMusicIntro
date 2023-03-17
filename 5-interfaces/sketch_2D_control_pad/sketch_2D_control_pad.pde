import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress pdAddress;

void setup() {
  size(400,400);
  oscP5 = new OscP5(this,12000);
  pdAddress = new NetAddress("127.0.0.1",3000);
}

void draw() {
  background(85);
  if (mousePressed == true) {
    fill(255,0,0);
    if (mouseX != pmouseX || mouseY != pmouseY) {
      OscMessage myMessage = new OscMessage("/pad");
      myMessage.add(mouseX * 127 / width);
      myMessage.add(127 - (mouseY * 127 / height));
      oscP5.send(myMessage, pdAddress); 
    }
  } else {
    fill(255);
  }
  
  ellipse(mouseX,mouseY,30,30);
}
