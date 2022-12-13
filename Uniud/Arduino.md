```cpp
// Define the pins that the LED is connected to
const int redPin = 11;
const int greenPin = 10;
const int bluePin = 9;

// Define the amount of time (in milliseconds) for the fade effect
const int fadeTime = 100;

void setup() {
  // Set the LED pins as outputs
  pinMode(redPin, OUTPUT);
  pinMode(greenPin, OUTPUT);
  pinMode(bluePin, OUTPUT);
}

void loop() {
  // Loop through all the colors of the rainbow
  for (int i = 0; i < 255; i++) {
    // Set the LED to red and fade in
    setColor(i, 0, 0);
    delay(fadeTime);

    // Set the LED to orange and fade in
    setColor(255, i, 0);
    delay(fadeTime);

    // Set the LED to yellow and fade in
    setColor(255, 255, i);
    delay(fadeTime);

    // Set the LED to green and fade in
    setColor(0, 255, i);
    delay(fadeTime);

    // Set the LED to blue and fade in
    setColor(0, i, 255);
    delay(fadeTime);

    // Set the LED to indigo and fade in
    setColor(i, 0, 255);
    delay(fadeTime);

    // Set the LED to violet and fade in
    setColor(255, 0, i);
    delay(fadeTime);
  }
}

// A function to set the color of the LED
void setColor(int red, int green, int blue) {
  analogWrite(redPin, red);
  analogWrite(greenPin, green);
  analogWrite(bluePin, blue);
}
```

---

# Stepper motor w/ rotary encoder by GPT 

```cpp
#include <Stepper.h>

// Define the pins that the rotary encoder is connected to
const int rotaryEncoderPinA = 2;
const int rotaryEncoderPinB = 3;

// Define the number of steps per revolution
const int stepsPerRevolution = 200;

// Create a Stepper object
Stepper myStepper(stepsPerRevolution, 8, 9, 10, 11);

// Create a variable to track the current position
int currentPosition = 0;

void setup() {
  // Set the rotary encoder pins as inputs
  pinMode(rotaryEncoderPinA, INPUT);
  pinMode(rotaryEncoderPinB, INPUT);

  // Set the speed of the stepper motor in steps per second
  myStepper.setSpeed(60);
}

void loop() {
  // Read the inputs from the rotary encoder
  int pinA = digitalRead(rotaryEncoderPinA);
  int pinB = digitalRead(rotaryEncoderPinB);

  // Determine the direction of rotation based on the input
  // from the rotary encoder
  if (pinA == LOW && pinB == LOW) {
    // Clockwise
    currentPosition++;
    myStepper.step(1);
  } else if (pinA == HIGH && pinB == LOW) {
    // Counterclockwise
    currentPosition--;
    myStepper.step(-1);
  }

  // You can add a delay here if the stepper is moving too fast
}

```