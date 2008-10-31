#############################################################################
# Main makefile
# Please edit this makefile to adapt to your project.
#############################################################################

# Project options
BIN				 = treecode
SRCDIRS			 = src
SRCEXT			 = c
HEADEXT			 = h

# Include the generic rules
include Makefile.rules

#############################################################################
# Project specific options
CFLAGS			+=
LDFLAGS			+= -lm

############ End of file ####################################################
