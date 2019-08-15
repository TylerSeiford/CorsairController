#pragma once

#include <CorsairLightingProtocol.h>
#include <LEDController.h>
#include "FakeTemperatureController.h"
#include "SimpleFanController.h"
#include <FastLED.h>

constexpr uint8_t DEFAULT_FAN_UPDATE_RATE = 500;

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
	LEDController<CHANNEL_LED_COUNT>* ledController;
	FakeTemperatureController* tempController;
	SimpleFanController* fanController;
	CorsairLightingProtocol* clp;
};

template<size_t CHANNEL_LED_COUNT>
CommanderPro<CHANNEL_LED_COUNT>::CommanderPro(bool useEEPROM) {
	ledController = new LEDController<CHANNEL_LED_COUNT>(useEEPROM);
	tempController = new FakeTemperatureController();
	fanController = new SimpleFanController(tempController, DEFAULT_FAN_UPDATE_RATE, EEPROM_ADDRESS + ledController->getEEPROMSize());

	clp = new CorsairLightingProtocol(ledController, tempController, fanController);

	ledController->addLeds(0, channel1);
	ledController->addLeds(1, channel2);

	clp->begin();
}


template<size_t CHANNEL_LED_COUNT>
CommanderPro<CHANNEL_LED_COUNT>::CommanderPro(bool useEEPROM, uint8_t fanUpdateRate) {
	ledController = new LEDController<CHANNEL_LED_COUNT>(useEEPROM);
	tempController = new FakeTemperatureController();
	fanController = new SimpleFanController(tempController, fanUpdateRate, EEPROM_ADDRESS + ledController->getEEPROMSize());

	clp = new CorsairLightingProtocol(ledController, tempController, fanController);

	ledController->addLeds(0, channel1);
	ledController->addLeds(1, channel2);

	clp->begin();
}

template<size_t CHANNEL_LED_COUNT>
void CommanderPro<CHANNEL_LED_COUNT>::addFan(uint8_t index, IFan* fan) {
	fanController->addFan(index, fan);
}

template<size_t CHANNEL_LED_COUNT>
bool CommanderPro<CHANNEL_LED_COUNT>::update() {
	if (clp->available())
	{
		clp->getCommand(cmd);
		clp->handleCommand(cmd);
	}
	fanController->updateFans();
	return ledController->updateLEDs();
}