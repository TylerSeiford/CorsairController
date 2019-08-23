#pragma once

#include <FastLEDController.h>
#include <CorsairLightingProtocol.h>
#include <CorsairLightingProtocolHID.h>
#include "FakeTemperatureController.h"
#include "SimpleFanController.h"
#include "DCFan.h"
#include "PWMFan.h"

constexpr uint8_t DEFAULT_FAN_UPDATE_RATE = 500;
constexpr uint8_t DEFAULT_FIRMWARE_VERSION[FIRMWARE_VERSION_SIZE] PROGMEM = { 0x00, 0x08, 0x00 };

template <size_t CHANNEL_LED_COUNT>
class CommanderPro {
public:
	/*
	 * Creates a commander pro
	 * 
	 * @param useEEPROM use EEPROM to save settings
	 * Uses default fan update rate
	 */
	CommanderPro(bool useEEPROM);

	/*
	 * Creates a commander pro
	 * 
	 * @param useEEPROM use EEPROM to save settings
	 * @param fanUpdateRate update rate to change fans
	 */
	CommanderPro(bool useEEPROM, uint8_t fanUpdateRate);

	/*
	 * Adds a fan to the commander pro
	 * 
	 * @param index location of fan to add
	 * @param fan Fan to add
	 */
	virtual void addFan(uint8_t index, IFan* fan);

	/*
	 * Reads latest data, translates it to LED colors, and updates buffers
	 *
	 * @return True if there is a change to the LEDs, False if there is no change
	 */
	virtual bool update();

	CRGB channel1[CHANNEL_LED_COUNT];
	CRGB channel2[CHANNEL_LED_COUNT];
private:
	Command cmd;
	FastLEDController<CHANNEL_LED_COUNT>* ledController;
	FakeTemperatureController* tempController;
	SimpleFanController* fanController;
	CorsairLightingProtocol* clp;
	CorsairLightingProtocolHID* cHID;
};

template<size_t CHANNEL_LED_COUNT>
CommanderPro<CHANNEL_LED_COUNT>::CommanderPro(bool useEEPROM) : CommanderPro(useEEPROM, DEFAULT_FAN_UPDATE_RATE) {
}


template<size_t CHANNEL_LED_COUNT>
CommanderPro<CHANNEL_LED_COUNT>::CommanderPro(bool useEEPROM, uint8_t fanUpdateRate) {
	ledController = new FastLEDController<CHANNEL_LED_COUNT>(tempController, useEEPROM);
	tempController = new FakeTemperatureController();
	fanController = new SimpleFanController(tempController, fanUpdateRate, EEPROM_ADDRESS + ledController->getEEPROMSize());

	clp = new CorsairLightingProtocol(ledController, tempController, fanController, DEFAULT_FIRMWARE_VERSION);
	cHID = new CorsairLightingProtocolHID(clp);

	ledController->addLeds(0, channel1);
	ledController->addLeds(1, channel2);
}

template<size_t CHANNEL_LED_COUNT>
void CommanderPro<CHANNEL_LED_COUNT>::addFan(uint8_t index, IFan* fan) {
	fanController->addFan(index, fan);
}

template<size_t CHANNEL_LED_COUNT>
bool CommanderPro<CHANNEL_LED_COUNT>::update() {
	cHID->update();

	fanController->updateFans();
	
	return ledController->updateLEDs();
}