#
# Machine makefile
#

DEFINES		+= -D__ARM32_ARCH__=7 -D__CORTEX_A7__ -D__ARM32_NEON__

ASFLAGS		:= -g -ggdb -Wall -O3
CFLAGS		:= -g -ggdb -Wall -O3
LDFLAGS		:= -T arch/$(ARCH)/$(MACH)/xboot.ld -nostdlib
MCFLAGS		:= -march=armv7-a -mtune=cortex-a7 -mfpu=vfpv4 -mfloat-abi=hard -marm -mno-thumb-interwork -mno-unaligned-access

LIBDIRS		:=
LIBS 		:=
INCDIRS		:=
SRCDIRS :=

# These routines are not used when an external loader starts xboot in DDR.
X_EXCLUDE_CFILES += arch/$(ARCH)/$(MACH)/sys-clock.c arch/$(ARCH)/$(MACH)/sys-copyself.c arch/$(ARCH)/$(MACH)/sys-decompress.c arch/$(ARCH)/$(MACH)/sys-dram.c arch/$(ARCH)/$(MACH)/sys-hash.c arch/$(ARCH)/$(MACH)/sys-jtag.c arch/$(ARCH)/$(MACH)/sys-spinor.c arch/$(ARCH)/$(MACH)/sys-spinand.c arch/$(ARCH)/$(MACH)/sys-uart.c
