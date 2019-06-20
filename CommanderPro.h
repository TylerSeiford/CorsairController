#pragma once

#include <CorsairLightingProtocol.h>
#include <LEDController.h>
#include "FakeTemperatureController.h"
#include "SimpleFanController.h"
#include <FastLED.h>

constexpr uint8_t LEDS_PER_CHANNEL = 10;
constexpr uint8_t DEFAULT_FAN_UPDATE_RATE = 500;

class CommanderPro {
public:
	/*
	 * Creates a commander pro
	 * 
	 * @param useEEPROM use EEPROM to save settings
	 * Uses default fan update rate
	 */
	CommanderPro(bool useEEPROM) : CommanderPro(useEEPROM, DEFAULT_FAN_UPDATE_RATE) {}

	/*
	 * Creates a commander pro
	 * 
	 * @param useEEPROM use EEPROM to save settings
	 * @param fanUpdateRate update rate to change fans
	 */
	CommanderPro(bool useEEPROM, uint8_t fanUpdateRate);

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
	LEDController<LEDS_PER_CHANNEL>* ledController;
	FakeTemperatureController* tempController;
	SimpleFanController* fanController;
	CorsairLightingProtocol* clp;
};