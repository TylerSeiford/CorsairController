#include "CommanderPro.h"
#include "Config.h"

//Hardware pin definitions
constexpr uint8_t FAN_1_PWM = 5;
constexpr uint8_t FAN_1_TACH = 7;

constexpr uint8_t FAN_2_PWM = 3;
constexpr uint8_t FAN_2_TACH = 2;

constexpr uint8_t CHANNEL_1 = 4;
constexpr uint8_t CHANNEL_2 = 8;

constexpr uint8_t RGB_1 = 6;
constexpr uint8_t RGB_2 = 9;
constexpr uint8_t RGB_3 = 10;


CommanderPro<LEDS_PER_CHANNEL>* cp;

void setup() {
	disableBuildInLEDs();

	cp = new CommanderPro<LEDS_PER_CHANNEL>(true);

	FastLED.addLeds<LED_CHIPSET_1, CHANNEL_1, LED_ORDER_1>(cp->channel1, LEDS_PER_CHANNEL);
	FastLED.addLeds<LED_CHIPSET_2, CHANNEL_2, LED_ORDER_2>(cp->channel2, LEDS_PER_CHANNEL);

	pinMode(RGB_1, OUTPUT);
	pinMode(RGB_2, OUTPUT);
	pinMode(RGB_3, OUTPUT);

	cp->addFan(0, new PWMFan(FAN_1_PWM, F1_MIN, F1_MAX));
	cp->addFan(1, new PWMFan(FAN_2_PWM, F2_MIN, F2_MAX));
}

void loop() {
	if (cp->update()) {
		FastLED.show();

		analogWrite(RED_PIN, cp->channel1->r);
		analogWrite(GREEN_PIN, cp->channel1->g);
		analogWrite(BLUE_PIN, cp->channel1->b);
	}
	else {
		delay(3);
	}
}