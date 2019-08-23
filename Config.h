#pragma once

	//ARGB setup
constexpr uint8_t LEDS_PER_CHANNEL = 10;
	//Number of LEDs per ARGB channel
#define LED_CHIPSET_1 TM1803
	//Chipset for ARGB1 header
#define LED_ORDER_1 GBR
	//LED order for ARGB1 header
#define LED_CHIPSET_2 TM1803
	//Chipset for ARGB2 header
#define LED_ORDER_2 GBR
	//LED order for ARGB2 header


//RGB setup

//#define RGB
#define GRB




// *** FANCY MAGICS FOR RGB SETUP ***
#ifdef RGB
	#define RED_PIN RGB_1
	#define GREEN_PIN RGB_2
	#define BLUE_PIN RGB_3
#endif
#ifdef GRB
	#define RED_PIN RGB_2
	#define GREEN_PIN RGB_1
	#define BLUE_PIN RGB_3
#endif
#ifdef BGR
#define RED_PIN RGB_3
#define GREEN_PIN RGB_2
#define BLUE_PIN RGB_1
#endif