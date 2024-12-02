#include "tagtype.h"
#include "boardcommon.c"


#ifdef EPD_SSDVAR
	#include "ssd-var.c"
#endif

#ifdef EPD_UCVAR42
	#include "uc-var-42.c"
#endif

#ifdef EPD_UCVAR27
	#include "uc-var-27.c"
#endif

#ifdef EPD_UCVAR29
	#include "uc-var-29.c"
#endif