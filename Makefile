#############################################################################
# Main makefile
# Build using g++
#############################################################################

CPP				 = g++
CC				 = gcc
LD				 = $(CPP)
build_dir		 = build
CXXFLAGS		 = -O0 -g -DYDEBUG -Wall -Wfatal-errors -fPIC
#############################################################################
# Comment / Uncomment for optimized compilation
# CXXFLAGS		:= -O3 -DNDEBUG
#############################################################################
# Comment / Uncomment for profiling
# CXXFLAGS		+= -pg
# LDFLAGS			+= -pg
#############################################################################
# Comment / Uncomment for parallel compilation
# CC				:= mpicc
# CPP				:= mpiCC
# LD				:= $(CPP)
# CXXFLAGS		+= -Dparallel -lmpi
#############################################################################

include Makefile.rules

force: ;
