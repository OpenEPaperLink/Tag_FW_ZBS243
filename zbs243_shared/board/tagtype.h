#ifndef TAGTYPE_H
#define TAGTYPE_H



#include <stdint.h>

#define __packed

#include "spi.h"
#include "boardcommon.h"


#define EEPROM_SETTINGS_AREA_START              (0x00000UL)
#define EEPROM_SETTINGS_AREA_LEN                (0x01000UL)
#define EEPROM_IMG_START                        (0x01000UL)

#ifdef M2_ZBS_16_SSD1619_BWR
	#define EPD_SSD1619
	#define SCREEN_WIDTH 152
	#define SCREEN_HEIGHT 152
	#define CUSTOMLUTS

	#define EEPROM_IMG_EACH                         (0x02000UL)

	#define HW_TYPE                                 SOLUM_154_SSD1619

	#define HAS_EEPROM 1
	#define HAS_SCREEN 1
	#define NFC_TYPE 1
	#define AP_EMULATE_TAG 1
	#define UI_152x152
#endif

#ifdef M2_ZBS_29_SSD1619_BWR
	#define EPD_SSD1619
	#define SCREEN_WIDTH 128
	#define SCREEN_HEIGHT 296
	#define CUSTOMLUTS

	#define EEPROM_IMG_EACH                         (0x03000UL)

	#define HW_TYPE                                 SOLUM_29_SSD1619

	#define HAS_EEPROM 1
	#define HAS_SCREEN 1
	#define NFC_TYPE 1
	#define AP_EMULATE_TAG 1
	#define UI_296x128
#endif

#ifdef M2_ZBS_42_SSD1619_BWR
	#define EPD_SSD1619
	#define SCREEN_WIDTH 400
	#define SCREEN_HEIGHT 300
	#define CUSTOMLUTS
	#define UI_400x300	

	#define EEPROM_IMG_EACH					(0x08000UL)

	#define HAS_EEPROM 1
	#define HAS_SCREEN 1
	#define NFC_TYPE 2
	#define AP_EMULATE_TAG 1

	#define HW_TYPE					        SOLUM_42_SSD1619
#endif

#ifdef M2_ZBS_42_UCVAR_BWR
	#define EPD_UCVAR42
	#define SCREEN_WIDTH 400
	#define SCREEN_HEIGHT 300
	#define CUSTOMLUTS
	#define UI_400x300	

	#define EEPROM_IMG_EACH					(0x08000UL)

	#define HAS_EEPROM 1
	#define HAS_SCREEN 1
	#define NFC_TYPE 2
	#define AP_EMULATE_TAG 1

	#define HW_TYPE							SOLUM_42_UCVAR	
#endif










#ifdef EPD_SSD1619
	#include "ssd1619.h"
#endif

#ifdef EPD_UCVAR42
	#include "uc-var-42.h"
#endif







#endif
