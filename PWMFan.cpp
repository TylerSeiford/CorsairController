#include "PWMFan.h"
#include "CLPUtils.h"

PWMFan::PWMFan(uint8_t pwmPin, uint16_t minRPM, uint16_t maxRPM) : pwmPin(pwmPin), IFan(minRPM, maxRPM) {
	pinMode(pwmPin, OUTPUT);
	analogWrite(pwmPin, 0);
	switch (digitalPinToTimer(pwmPin)) {
	case TIMER0B:/* 3 */
#ifdef DEBUG
		Serial.println(F("Pin not supported as PWM fan pin"));
		Serial.println(F("We don't want to mess up arduino time functions"));
#endif // DEBUG
		break;
	case TIMER3A:/* 5 */
		TCCR3B = (TCCR3B & 0b11111000) | 0x01;
		break;
	case TIMER4D:/* 6 */
		//PLLFRQ = (PLLFRQ & B11001111) | (0x03 << PLLTM0);
		TCCR4B = (TCCR4B & 0b11110000) | 0x01;
		break;
	case TIMER1A:/* 9 */
		TCCR1B = (TCCR1B & 0b11111000) | 0x01;
		break;
	case TIMER1B:/* 10 */
		TCCR1B = (TCCR1B & 0b11111000) | 0x01;
		break;
	default:
#ifdef DEBUG
		Serial.println(F("Pin not supported as PWM fan pin"));
#endif // DEBUG
		break;
	}
}

void PWMFan::setPower(uint8_t percentage)
{
	analogWrite(pwmPin, percentage);
}