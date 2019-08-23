#pragma once

#include "Arduino.h"
#include "IFan.h"

class PWMFan : public IFan {
public:
	// minRPM should be the rpm value at 0% power and maxRPM at 100% power
	// These values are used to map speed to power using linear interpolation
	PWMFan(uint8_t pwmPin, uint16_t minRPM, uint16_t maxRPM);
	uint8_t calculatePowerFromSpeed(uint16_t rpm) override;
	uint16_t calculateSpeedFromPower(uint8_t power) override;
	void setPower(uint8_t percentage) override;
protected:
	const uint8_t pwmPin;
};