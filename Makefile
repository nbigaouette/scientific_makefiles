#############################################################################
# Main makefile
# Build using g++
#############################################################################
CPP              = g++
CC               = gcc
LD               = $(CPP)
build_dir        = build
CXXFLAGS         = -O0 -g -DYDEBUG -Wall -Wfatal-errors -fPIC
#############################################################################
# Comment / Uncomment for optimized compilation
# CXXFLAGS      := -O3 -DNDEBUG
#############################################################################
# Comment / Uncomment for profiling
# CXXFLAGS      += -pg
# LDFLAGS           += -pg
#############################################################################
# Comment / Uncomment for parallel compilation
# CC                := mpicc
# CPP               := mpiCC
# LD                := $(CPP)
# CXXFLAGS      += -Dparallel -lmpi
#############################################################################

BIN				 = CHANGE_TO_PROJECT_NAME
SRCDIRS			 = src
# LIBS			 = Impact Tunneling

include Makefile.rules

#############################################################################
# Uncomment to build library
# LIB_FILES		 = $(addprefix $(build_dir)/libIonization,$(addsuffix .a,  $(LIBS) ) )
# SHARED_LIB_FILES = $(addprefix $(build_dir)/libIonization,$(addsuffix .so, $(LIBS) ) )
# LDFLAGS			+= -lIonizationTunneling -lIonizationImpact -Wl,-rpath,$(build_dir)
#
# # New dependency for the binary linking: it needs the libraries
# $(BIN): lib
#
# $(build_dir)/Ionization%.o: $(build_dir)/%.o
# 	cp $< $@
#
# # Build static libraries
# lib: $(LIB_FILES) $(SHARED_LIB_FILES)
# $(build_dir)/libIonization%.a : $(build_dir)/Ionization%.o
# 	ar rc $@ $<
# 	ranlib $@
#
# # Build shared libraries
# $(build_dir)/libIonization%.so: $(build_dir)/Ionization%.o
# 	$(CPP) -shared $< -o $@

force: ;
