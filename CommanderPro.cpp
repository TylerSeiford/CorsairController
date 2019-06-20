#include "LightingNodePro.h"

LightingNodePro::LightingNodePro(bool useEEPROM) {
	ledController = new LEDController<LEDS_PER_CHANNEL>(useEEPROM);
	clp = new CorsairLightingProtocol(ledController);
	ledController->addLeds(0, channel1);
	ledController->addLeds(1, channel2);
	clp->begin();
}

bool LightingNodePro::update() {
	if (clp->available())
	{
		clp->getCommand(cmd);
		clp->handleCommand(cmd);
	}
	return ledController->updateLEDs();
}