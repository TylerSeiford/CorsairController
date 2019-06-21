#include "CommanderPro.h"

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

//Don't ask why these are needed
template class CommanderPro<10>;
template class CommanderPro<20>;
template class CommanderPro<30>;
template class CommanderPro<40>;
template class CommanderPro<50>;
template class CommanderPro<60>;