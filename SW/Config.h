#pragma once


//ARGB setup
constexpr uint8_t LEDS_PER_CHANNEL = 20;
//Number of LEDs per ARGB channel
#define LED_CHIPSET_1 WS2812B
	//Chipset for ARGB1 header
#define LED_ORDER_1 GRB
	//LED order for ARGB1 header
#define LED_CHIPSET_2 WS2812B
	//Chipset for ARGB2 header
#define LED_ORDER_2 GRB
	//LED order for ARGB2 header


//RGB setup
#define GRB_
	//Order of RGB header


//Fan setup
constexpr uint16_t FAN_UPDATE_RATE = 500;
constexpr uint8_t F1_MIN = 0;
constexpr uint8_t F1_MAX = 950;
//Min & Max RPMs for Fan1
constexpr uint8_t F2_MIN = 0;
constexpr uint8_t F2_MAX = 1500;
//Min & Max RPMs for Fan2


// *** FANCY MAGICS FOR RGB SETUP ***
#ifdef RGB_
#define RED_PIN RGB_1
#define GREEN_PIN RGB_2
#define BLUE_PIN RGB_3
#endif
#ifdef RBG_
#define RED_PIN RGB_1
#define GREEN_PIN RGB_3
#define BLUE_PIN RGB_2
#endif
#ifdef GRB_
#define RED_PIN RGB_2
#define GREEN_PIN RGB_1
#define BLUE_PIN RGB_3
#endif
#ifdef GBR_
#define RED_PIN RGB_3
#define GREEN_PIN RGB_1
#define BLUE_PIN RGB_2
#endif
#ifdef BGR_
#define RED_PIN RGB_3
#define GREEN_PIN RGB_2
#define BLUE_PIN RGB_1
#endif
#ifdef BRG_
#define RED_PIN RGB_2
#define GREEN_PIN RGB_3
#define BLUE_PIN RGB_1
#endif