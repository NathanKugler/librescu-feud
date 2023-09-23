const int buttonAPin = 2; // Pin number where the button is connected
const int buttonBPin = 3;

void setup() {
  pinMode(buttonAPin, INPUT_PULLUP); // Set the button pin as an input with a pull-up resistor
  pinMode(buttonBPin, INPUT_PULLUP);
  Serial.begin(9601); // Initialize serial communication
}

void loop() {
  if (digitalRead(buttonAPin) == HIGH) {
    Serial.println("u"); // Send the character 'u' when the button is pressed
    
    delay(200); // Adjust the delay as needed
  }
  else if (digitalRead(buttonBPin) == HIGH) {
    Serial.println("i"); // Send the character 'u' when the button is pressed
    
    delay(200); // Adjust the delay as needed
  }
}
