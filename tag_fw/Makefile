
BUILD		?= M2_ZBS_29_SSDVAR_BWR
SOC		?= zbs243

#file containing main() must be first!
SOURCES		+= main.c eeprom.c drawing.c
#SOURCES		+= ccm.c comms.c
SOURCES 	+= board/tagtype.c
SOURCES		+= board/uicommon.c
SOURCES		+= comms.c
SOURCES		+= syncedproto.c
SOURCES		+= powermgt.c barcode.c i2cdevices.c settings.c
SOURCES 	+= g5/g5dec.c

all:	#make sure it is the first target

include soc/$(SOC)/make.mk
include cpu/$(CPU)/make.mk
include board/make.mk

FLAGS += -D$(BUILD)

FLAGS += -Iboard/
FLAGS += -Isoc/$(SOC)
FLAGS += -Icpu/$(CPU)

SOURCES += cpu/$(CPU)/cpu.c

SOURCES += md5.c


EEPROMDRV ?= eeprom.c

SOURCES += $(EEPROMDRV)

#FLAGS += --code-loc 0x400 -DSTOCKFWOPTIONS

FLAGS += -I.

OBJS = $(patsubst %.c,%.$(OBJFILEEXT),$(SOURCES))

all: $(TARGETS)


%.$(OBJFILEEXT): %.c
	$(CC) -c $^ $(FLAGS) -o $@

main.ihx: $(OBJS)
	rm -f $@
	$(CC) $^ $(FLAGS)

main.elf: $(OBJS)
	$(CC) $(FLAGS) -o $@ $^

%.bin: %.ihx
	objcopy $^ $@ -I ihex -O binary

	@echo '---------- Segments ----------'
	@egrep '(ABS,CON)|(REL,CON)' main.map | gawk --non-decimal-data '{dec = sprintf("%d","0x" $$2); print dec " " $$0}' | /usr/bin/sort -n -k1 | cut -f2- -d' ' | uniq
	@echo '---------- Memory ----------'
	@egrep 'available|EXTERNAL|FLASH' main.mem
	@python3 scanfilesram.py



.PHONY: clean

SOURCES += board/zbs29_ssd1619/screen.c
SOURCES += board/zbs42_ssd1619/screen.c
SOURCES += board/zbs154_ssd1619/screen.c
SOURCES += board/zbs16_ssd1619/screen.c
SOURCES += board/zbs29_uc8151/screen.c
SOURCES += board/zbs27_ucvar/screen.c
SOURCES += board/zbs42_ucvar/screen.c
SOURCES += board/tagtype.c
SOURCES += board/uicommon.c
clean:
	rm -f $(patsubst %.c,%.asm,$(SOURCES))
	rm -f $(patsubst %.c,%.lst,$(SOURCES))
	rm -f $(patsubst %.c,%.rst,$(SOURCES))
	rm -f $(patsubst %.c,%.sym,$(SOURCES))
	rm -f $(patsubst %.c,%.map,$(SOURCES))
	rm -f $(patsubst %.c,%.mem,$(SOURCES))
	rm -f $(patsubst %.c,%.ihx,$(SOURCES))
	rm -f $(patsubst %.c,%.adb,$(SOURCES))
	rm -f $(patsubst %.c,%.adb,$(SOURCES))
	rm -f $(patsubst %.c,%.omf,$(SOURCES))
	rm -f $(patsubst %.c,%.bin,$(SOURCES))
	rm -f $(OBJS)
