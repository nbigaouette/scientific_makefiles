#################################################################
# Main makefile
# Please edit this makefile to adapt to your project.
# Type "make help" for usage
#################################################################

# Project options
#LIB              = lib_name
BIN              = project_name
SRCDIRS          = src
SRCEXT           = cpp
HEADEXT          = hpp
# LANGUAGE         = C
LANGUAGE         = CPP
# TESTDIRS         = testing
# TESTMAIN         = $(TESTDIRS)/test_name

# Include the generic rules
include makefiles/Makefile.rules

#################################################################
# Project specific options
CFLAGS          +=
LDFLAGS         +=

# Include the library stuff
# include makefiles/Makefile.library

############ End of file ########################################
