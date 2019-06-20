#include "CommanderPro.h"

CommanderPro::CommanderPro(bool useEEPROM) : CommanderPro(useEEPROM, FAN_UPDATE_RATE) {}

CommanderPro::CommanderPro(bool useEEPROM, uint8_t fanUpdateRate) {
	ledController = new LEDController<LEDS_PER_CHANNEL>(useEEPROM);
	tempController = new FakeTemperatureController();
	fanController = new SimpleFanController(tempController, fanUpdateRate, EEPROM_ADDRESS + ledController->getEEPROMSize());
	
	clp = new CorsairLightingProtocol(ledController, tempController, fanController);

	ledController->addLeds(0, channel1);
	ledController->addLeds(1, channel2);
	
	clp->begin();
}

bool CommanderPro::update() {
	if (clp->available())
	{
		clp->getCommand(cmd);
		clp->handleCommand(cmd);
	}
	return ledController->updateLEDs();
}