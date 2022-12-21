```cpp
#include <Stepper.h>

const int stepsPerRevolution = 200;  // change this to match the number of steps per revolution for your motor

// initialize the stepper library on pins 8 through 11:
Stepper myStepper(stepsPerRevolution, 8, 9, 10, 11);

void setup() {
  // set the speed at 60 rpm:
  myStepper.setSpeed(60);
}

void loop() {
  // step one revolution in one direction:
  myStepper.step(stepsPerRevolution);
  // step one revolution in the other direction:
  myStepper.step(-stepsPerRevolution);
}

```

This sketch uses the Stepper library to control the stepper motor. The `stepsPerRevolution` variable should be set to the number of steps required for the motor to make one full revolution. The `setSpeed()` function sets the speed of the motor in revolutions per minute (rpm). The `step()` function takes an argument specifying the number of steps to move the motor. A positive value will turn the motor clockwise, and a negative value will turn it counterclockwise.

You can adjust the speed of the motor by changing the value passed to the `setSpeed()` function. You can also adjust the direction of the motor by changing the sign of the argument passed to the `step()` function.