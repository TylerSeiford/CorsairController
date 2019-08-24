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
#define GRB
	//Order of RGB header, normally GRB or RGB


//Fan setup
constexpr uint8_t F1_MIN = 0;
constexpr uint8_t F1_MAX = 650;
	//Min & Max RPMs for Fan1
constexpr uint8_t F2_MIN = 0;
constexpr uint8_t F2_MAX = 1500;
	//Min & Max RPMs for Fan2



// *** FANCY MAGICS FOR RGB SETUP ***
#ifdef RGB
	#define RED_PIN RGB_1
	#define GREEN_PIN RGB_2
	#define BLUE_PIN RGB_3
#endif
#ifdef RBG
	#define RED_PIN RGB_1
	#define GREEN_PIN RGB_3
	#define BLUE_PIN RGB_2
#endif
#ifdef GRB
	#define RED_PIN RGB_2
	#define GREEN_PIN RGB_1
	#define BLUE_PIN RGB_3
#endif
#ifdef GBR
	#define RED_PIN RGB_3
	#define GREEN_PIN RGB_1
	#define BLUE_PIN RGB_2
#endif
#ifdef BGR
	#define RED_PIN RGB_3
	#define GREEN_PIN RGB_2
	#define BLUE_PIN RGB_1
#endif
#ifdef BRG
	#define RED_PIN RGB_2
	#define GREEN_PIN RGB_3
	#define BLUE_PIN RGB_1
#endif