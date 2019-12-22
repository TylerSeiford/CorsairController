#include <CorsairLightingProtocol.h>


#include "FakeTemperatureController.h"
#include "SimpleFanController.h"
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

const char SERIAL_NUM[] PROGMEM = "F00F00F0000F";


//CLP constructs
CorsairLightingFirmware* clf;
FakeTemperatureController* tempCtrl;
FastLEDController* ledCtrl;
SimpleFanController* fanCtrl;
CorsairLightingProtocolController* clp;
CorsairLightingProtocolHID* cHID;

CRGB channel1[LEDS_PER_CHANNEL];
CRGB channel2[LEDS_PER_CHANNEL];


void setup() {
	CLP::disableBuildInLEDs();

	clf = &corsairCommanderPROFirmware();
	tempCtrl = new FakeTemperatureController();
	ledCtrl = new FastLEDController(tempCtrl, true);
	fanCtrl = new SimpleFanController(tempCtrl, FAN_UPDATE_RATE, EEPROM_ADDRESS + ledCtrl->getEEPROMSize());
	clp = new CorsairLightingProtocolController(ledCtrl, tempCtrl, fanCtrl, clf);
	cHID = new CorsairLightingProtocolHID(clp, SERIAL_NUM);

	FastLED.addLeds<LED_CHIPSET_1, CHANNEL_1, LED_ORDER_1>(channel1, LEDS_PER_CHANNEL);
	FastLED.addLeds<LED_CHIPSET_2, CHANNEL_2, LED_ORDER_2>(channel2, LEDS_PER_CHANNEL);
	ledCtrl->addLEDs(0, channel1, LEDS_PER_CHANNEL);
	ledCtrl->addLEDs(1, channel2, LEDS_PER_CHANNEL);

	pinMode(RGB_1, OUTPUT);
	pinMode(RGB_2, OUTPUT);
	pinMode(RGB_3, OUTPUT);

	fanCtrl->addFan(0, new PWMFan(FAN_1_PWM, F1_MIN, F1_MAX));
	fanCtrl->addFan(1, new PWMFan(FAN_2_PWM, F2_MIN, F2_MAX));
}

void loop() {
	cHID->update();

	if (ledCtrl->updateLEDs()) {
		FastLED.show();

		analogWrite(RED_PIN, channel1->r);
		analogWrite(GREEN_PIN, channel1->g);
		analogWrite(BLUE_PIN, channel1->b);
	}
	else {
		delay(3);
	}

	fanCtrl->updateFans();
}