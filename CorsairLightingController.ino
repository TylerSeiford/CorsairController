/*
 Name:		CorsairLightingController.ino
 Created:	5/24/2019 8:35:34 PM
 Author:	Tyler
*/

#include "FakeTemperatureController.h"
#include "PWMFan.h"
#include "SimpleFanController.h"
#include <LEDController.h>
#include "CommanderPro.h"

constexpr uint8_t CHANNEL_1_PIN = 7;
constexpr uint8_t CHANNEL_2_PIN = 8;
constexpr uint8_t RED_PIN = 6;
constexpr uint8_t GREEN_PIN = 9;
constexpr uint8_t BLUE_PIN = 10;

CommanderPro* lnp;

void setup() {
	lnp = new CommanderPro(true);
	FastLED.addLeds<TM1803, CHANNEL_2_PIN, GBR>(lnp->channel2, LEDS_PER_CHANNEL);
	FastLED.addLeds<TM1803, CHANNEL_1_PIN, GBR>(lnp->channel1, LEDS_PER_CHANNEL);

	pinMode(RED_PIN, OUTPUT);
	pinMode(GREEN_PIN, OUTPUT);
	pinMode(BLUE_PIN, OUTPUT);
}

void loop() {
	if (lnp->update()) {
		FastLED.show();
		analogWrite(RED_PIN, lnp->channel1->r);
		analogWrite(GREEN_PIN, lnp->channel1->g);
		analogWrite(BLUE_PIN, lnp->channel1->b);
	}
	else {
		delay(3);
	}
}