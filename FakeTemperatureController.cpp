#include "FakeTemperatureController.h"

uint16_t FakeTemperatureController::getVoltageRail12V() {
	return 12000;
}

uint16_t FakeTemperatureController::getVoltageRail5V() {
	return 5000;
}

uint16_t FakeTemperatureController::getVoltageRail3V3() {
	return 3300;
}

bool FakeTemperatureController::isTemperatureSensorConnected(uint8_t temperatureSensor) {
	return false;
}

uint16_t FakeTemperatureController::getTemperatureValue(uint8_t temperatureSensor) {
	return 0;
}