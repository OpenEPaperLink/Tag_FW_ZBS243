#ifndef TAGTYPE_H
#define TAGTYPE_H


#include <stdint.h>

#define __packed

#include "spi.h"
#include "boardcommon.h"


#define EEPROM_SETTINGS_AREA_START              (0x00000UL)
#define EEPROM_SETTINGS_AREA_LEN                (0x01000UL)
#define EEPROM_IMG_START                        (0x01000UL)



#ifdef M2_ZBS_16_SSDVAR_152_BWR
	// This is the regular 1.54/1.6" 152x152 BWR M2 tag 0x341/0x343
	#define EPD_SSDVAR
	#define SCREEN_WIDTH 152
	#define SCREEN_HEIGHT 152
	#define CUSTOMLUTS
	#define ALT_DRAW_COMMAND

	#define EEPROM_IMG_EACH                         (0x02000UL)

	#define HW_TYPE                                 SOLUM_154_SSD1619
	#define HW_SUBTYPE									0
	#define HW_STRING "16SSDVAR_152BWR"


	#define HAS_EEPROM 1
	#define HAS_SCREEN 1
	#define NFC_TYPE 1
	#define UI_152x152
#endif

#ifdef M2_ZBS_16_SSDVAR2_152_BWR
	// This is the regular 1.54/1.6" 152x152 BWR M2 tag 0x341/0x343, but with an 8-pixel offset on the side
	#define EPD_SSDVAR
	#define SCREEN_WIDTH 152
	#define SCREEN_HEIGHT 152
	#define CUSTOMLUTS
	#define ALT_DRAW_COMMAND
	#define XOFFSET8
	#define EEPROM_IMG_EACH                         (0x02000UL)

	#define HW_TYPE                                 SOLUM_154_SSD1619
	#define HW_SUBTYPE									1
	#define HW_STRING "16SSDVAR2_152BWR"

	#define HAS_EEPROM 1
	#define HAS_SCREEN 1
	#define NFC_TYPE 1
	#define UI_152x152
#endif

#ifdef M2_ZBS_16_SSDVAR_200_BW
	// This is the 200px version of the 1.54/1.6" BW M2 tag
	#define EPD_SSDVAR
	#define SCREEN_WIDTH 200
	#define SCREEN_HEIGHT 200
	#define CUSTOMLUTS

	#define EEPROM_IMG_EACH                         (0x02000UL)

	#define HW_TYPE                                 SOLUM_M2_BW_16
	#define HW_SUBTYPE									0
	#define HW_STRING "16SSDVAR_200BW"


	#define HAS_EEPROM 1
	#define HAS_SCREEN 1
	#define NFC_TYPE 1
	#define UI_152x152
#endif

#ifdef M2_ZBS_22_SSDVAR_BWR
	// This is the 2.6" variety
	#define EPD_SSDVAR
	#define SCREEN_WIDTH				104
	#define SCREEN_HEIGHT				212
	#define CUSTOMLUTS

	#define EEPROM_IMG_EACH                         (0x02000UL)

	#define HW_TYPE					        		SOLUM_M2_BWR_22
	#define HW_SUBTYPE									0
	#define HW_STRING "M2_ZBS_22_SSDVAR_BWR"


	#define HAS_EEPROM 1
	#define HAS_SCREEN 1
	#define NFC_TYPE 1
	#define UI_212x104
#endif

#ifdef M2_ZBS_26_SSDVAR_BWR
	// This is the 2.6" variety
	#define EPD_SSDVAR
	#define SCREEN_WIDTH				152
	#define SCREEN_HEIGHT				296

	#define EEPROM_IMG_EACH                         (0x03000UL)

	#define HW_TYPE					        		SOLUM_M2_BWR_26
	#define HW_SUBTYPE									0
	#define HW_STRING "M2_ZBS_26_SSDVAR_BWR"

	#define HAS_EEPROM 1
	#define HAS_SCREEN 1
	#define NFC_TYPE 1
	#define UI_296x128
#endif

#ifdef M2_ZBS_27_UCVAR_BWR
	// This is the 2.7" variety
	#define EPD_UCVAR27
	//#define EPD_UCVAR29
	#define SCREEN_WIDTH				176
	#define SCREEN_HEIGHT				264

	#define EEPROM_IMG_EACH                         (0x03000UL)

	#define HW_TYPE					        		SOLUM_M2_BWR_27
	#define HW_SUBTYPE									0
	#define HW_STRING "M2_ZBS_27_UCVAR_BWR"

	#define HAS_EEPROM 1
	#define HAS_SCREEN 1
	#define NFC_TYPE 1
	#define UI_264x176
	#define EPD_BYTEWISE_CS
#endif


#ifdef M2_ZBS_29_SSDVAR_BWR
	// This is the regular 2.9" tag (296x128) BWR non-freezer type
	#define EPD_SSDVAR
	#define SCREEN_WIDTH 128
	#define SCREEN_HEIGHT 296
	#define CUSTOMLUTS
	#define ALT_DRAW_COMMAND

	#define EEPROM_IMG_EACH                         (0x03000UL)

	#define HW_TYPE                                 SOLUM_29_SSD1619
	#define HW_SUBTYPE									0
	#define HW_STRING "M2_ZBS_29_SSDVAR_BWR"

	#define HAS_EEPROM 1
	#define HAS_SCREEN 1
	#define NFC_TYPE 1
	#define UI_296x128
#endif

#ifdef M2_ZBS_29_SSDVAR2_BWR
	// This is the regular 2.9" tag (296x128) BWR non-freezer type, with an 8-pixel offset
	#define EPD_SSDVAR
	#define SCREEN_WIDTH 128
	#define SCREEN_HEIGHT 296
	#define CUSTOMLUTS
	#define XOFFSET8
	#define ALT_DRAW_COMMAND

	#define EEPROM_IMG_EACH                         (0x03000UL)

	#define HW_TYPE                                 SOLUM_29_SSD1619
	#define HW_SUBTYPE									1
	#define HW_STRING "M2_ZBS_29_SSDVAR2_BWR"

	#define HAS_EEPROM 1
	#define HAS_SCREEN 1
	#define NFC_TYPE 1
	#define UI_296x128
#endif


#ifdef M2_ZBS_29_UCVAR_BWR
	// This is the regular 2.9" (UC) tag (296x128) BWR non-freezer type
	#define EPD_UCVAR29
	#define SCREEN_WIDTH 128
	#define SCREEN_HEIGHT 296

	#define EEPROM_IMG_EACH                         (0x03000UL)

	#define HW_TYPE                                 SOLUM_M2_BWR_29_UC8151
	#define HW_SUBTYPE									0
	#define HW_STRING "M2_ZBS_29_UCVAR_BWR"

	#define HAS_EEPROM 1
	#define HAS_SCREEN 1
	#define NFC_TYPE 1
	#define UI_296x128
#endif

#ifdef M2_ZBS_29_UCVAR_BW
	// This is the regular 2.9" (UC) tag (296x128) BW non-freezer type
	#define EPD_UCVAR29
	#define SCREEN_WIDTH 128
	#define SCREEN_HEIGHT 296

	#define EEPROM_IMG_EACH                         (0x03000UL)

	#define HW_TYPE                                 SOLUM_M2_BW_29
	#define HW_SUBTYPE									0
	#define HW_STRING "M2_ZBS_29_UCVAR_BW"

	#define BW_SCREEN

	#define HAS_EEPROM 1
	#define HAS_SCREEN 1
	#define NFC_TYPE 1
	#define UI_296x128
#endif


#ifdef M2_ZBS_29_SSDVAR_BW_FREEZER
	// This is the freezer 2.9" tag (296x128) BW
	#define EPD_SSDVAR
	#define SCREEN_WIDTH 128
	#define SCREEN_HEIGHT 296

	#define EPD_VAR_FREEZER
	#define BOARD_M2_29_FREEZER
	#define BOARD_QUIRKS_FREEZER_M2_29

	#define EEPROM_IMG_EACH                         (0x03000UL)

	#define HW_TYPE                                 SOLUM_M2_BW_29_LOWTEMP
	#define HW_SUBTYPE									0
	#define HW_STRING "M2_ZBS_29_SSDVAR_BW_FREEZER"


	#define HAS_EEPROM 1
	#define HAS_SCREEN 1
	#define NFC_TYPE -1
	#define EXTRA_EEPROM_LINES // this tag has extra eeprom lines that need to be driven
	#define UI_296x128
#endif

#ifdef M2_ZBS_42_SSDVAR_BWR
	#define EPD_SSDVAR
	#define SCREEN_WIDTH 400
	#define SCREEN_HEIGHT 300
	#define CUSTOMLUTS
	#define UI_400x300	

	#define EEPROM_IMG_EACH							(0x08000UL)

	#define HAS_EEPROM 1
	#define HAS_SCREEN 1
	#define NFC_TYPE 2

	#define HW_TYPE					        		SOLUM_42_SSD1619
	#define HW_SUBTYPE									0
	#define HW_STRING "M2_ZBS_42_SSDVAR_BWR"


#endif

#ifdef M2_ZBS_42_UCVAR_BWR
	#define EPD_UCVAR42
	#define SCREEN_WIDTH 400
	#define SCREEN_HEIGHT 300
	#define CUSTOMLUTS
	#define UI_400x300	

	#define EEPROM_IMG_EACH							(0x08000UL)

	#define HAS_EEPROM 1
	#define HAS_SCREEN 1
	#define NFC_TYPE 2

	#define HW_TYPE									SOLUM_42_UCVAR	
	#define HW_SUBTYPE									0
	#define HW_STRING "M2_ZBS_42_UCVAR_BWR"
#endif




#ifdef EPD_SSDVAR
	#include "ssd-var.h"
#endif

#ifdef EPD_UCVAR42
	#include "uc-var-42.h"
#endif

#ifdef EPD_UCVAR27
	#include "uc-var-27.h"
#endif

#ifdef EPD_UCVAR29
	#include "uc-var-29.h"
#endif

#endif