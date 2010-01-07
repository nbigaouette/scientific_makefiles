#################################################################
# Main makefile
# Please edit this makefile to adapt to your project.
# Type "make help" for usage
#################################################################

# To run with a maximum of 500 MiB:
# softlimit -a 500000000 ./mdgit
# softlimit is part of http://cr.yp.to/daemontools.html

# To check memory usage:
# while [ 1 ]; do pmap -d `pidof mdgit` | grep writeable | sed "s|K||g" | awk '{print ""$4" KiB    "$4/1024" MiB    "$4/1024/1024" GiB"}' ; sleep 0.1 ;done 2> /dev/null
# Older version, not good enough:
# while [ 1 ]; do pidof -x mdgit | xargs ps u -p | tail -1 | awk '{print ""$6" KiB    "$6/1024" MiB    "$6/1024**2" GiB"}' ; sleep 0 ;done 2> /dev/null

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
