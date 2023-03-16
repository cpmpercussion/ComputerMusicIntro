int LDR_Pin = A0; //analog pin 0

void setup() {
  Serial.begin(9600);
}

void loop() {
  int LDRReading = analogRead(LDR_Pin);

  Serial.write(LDRReading/4);
  //delay(100); //just here to slow down the output for easier reading
}
