#
# Machine makefile
#

DEFINES		+=

ASFLAGS		:= -g -ggdb -Wall -O3
CFLAGS		:= -g -ggdb -Wall -O3
LDFLAGS		:= -T arch/$(ARCH)/$(MACH)/xboot.ld -nostdlib
MCFLAGS		:= -march=rv32imafdc -mabi=ilp32d -mcmodel=medany -fno-stack-protector -mstrict-align

LIBDIRS		:=
LIBS 		:=
INCDIRS		:=
SRCDIRS		:=
