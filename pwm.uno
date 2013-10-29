int ledPin = 9; // LED connected to digital pin 9
// connect pwm pin 10 and analog pin A3 via wire and measure the output of pwm pin 9
// then we can see that the output signal's duty can be changed according to the set value below, e.g. 100
int analogPin = 3; // potentiometer connected to analog pin 3
int pwm10 = 10; // potentiometer connected to analog pin 4
int val = 0; // variable to store the read value

void setup()
{
  pinMode(ledPin, OUTPUT); // sets the pin as output
}

void loop()
{
  analogWrite(pwm10, 100);
  val = analogRead(analogPin); // read the input pin
  analogWrite(ledPin, val / 4); // analogRead values go from 0 to 1023, analogWrite values from 0 to 255
}
