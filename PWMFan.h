#pragma once

#include "Arduino.h"

class PWMFan {
public:
	// minRPM should be the rpm value at 0% power and maxRPM at 100% power
	// These values are used to map speed to power using linear interpolation
	PWMFan(uint8_t pwmPin, uint16_t minRPM, uint16_t maxRPM);
	virtual void setPower(uint8_t percentage);
	virtual uint8_t calculatePowerFromSpeed(uint16_t rpm);
	virtual uint16_t calculateSpeedFromPower(uint8_t power);
protected:
	const uint8_t pwmPin;
	const uint16_t minRPM;
	const uint16_t maxRPM;
};