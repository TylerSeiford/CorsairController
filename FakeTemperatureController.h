#pragma once

#include "TemperatureController.h"

class FakeTemperatureController : public TemperatureController {
protected:
	uint16_t getTemperatureValue(uint8_t temperatureSensor) override;
	bool isTemperatureSensorConnected(uint8_t temperatureSensor) override;
	uint16_t getVoltageRail12V() override;
	uint16_t getVoltageRail5V() override;
	uint16_t getVoltageRail3V3() override;
};