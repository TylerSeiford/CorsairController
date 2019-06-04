#pragma once

#include <CorsairLightingProtocol.h>
#include <LEDController.h>
#include <FastLED.h>

constexpr uint8_t LEDS_PER_CHANNEL = 10;

class LightingNodePro {
public:
	/*
	 * Creates a lighting node pro
	 */
	LightingNodePro(bool useEEPROM);
	/*
	 * Reads latest data, translates it to LED colors, and updates buffers
	 * 
	 * @return True if there is a change to the LEDs, False if there is no change
	 */
	bool update();

	CRGB channel1[LEDS_PER_CHANNEL];
	CRGB channel2[LEDS_PER_CHANNEL];
private:
	Command cmd;
	CorsairLightingProtocol* clp;
	LEDController<LEDS_PER_CHANNEL>* ledController;
};