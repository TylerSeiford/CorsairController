#pragma once

#include "Arduino.h"
#include "CorsairLightingProtocolConstants.h"
#include "CLPUtils.h"
#include "FanController.h"

class IFan {
public:
	IFan(uint8_t minRPM, uint16_t maxRPM, uint8_t type);
	virtual void setPower(uint8_t percentage);
	virtual uint8_t calculatePowerFromSpeed(uint16_t rpm);
	virtual uint16_t calculateSpeedFromPower(uint8_t power);
	uint8_t getType() {
		return type;
	}
protected:
	const uint8_t type;
	const uint16_t minRPM;
	const uint16_t maxRPM;
};