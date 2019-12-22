#pragma once

#include "TemperatureController.h"


class FakeTemperatureController : public TemperatureController {
protected:
	virtual uint16_t getTemperatureValue(uint8_t temperatureSensor) override;
	virtual bool isTemperatureSensorConnected(uint8_t temperatureSensor) override;
	virtual uint16_t getVoltageRail12V() override;
	virtual uint16_t getVoltageRail5V() override;
	virtual uint16_t getVoltageRail3V3() override;
};