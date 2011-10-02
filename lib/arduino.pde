void setup() {
  Serial.begin(9600);
  pinMode(12, OUTPUT);
}

void loop() {
  if (Serial.available() > 0) {
    switch(Serial.read()) {
      case 0:
        digitalWrite(12, LOW);
        Serial.write(1);
        break;
      case 1:
        digitalWrite(12, HIGH);
        Serial.write(1);
        break;
      case 2:
        lightLevel = analogRead(0);
        Serial.write(lightLevel);
        break;
      default:
        Serial.write(-1);
    }
  }
  delay(100);
}
