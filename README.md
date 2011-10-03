Scientific Makfiles
================================

Content
-------------------------
A set of makefiles useful for writting and running scientific C or C++ code.

Features
-------------------------
 * Can be used to compile libraries or full programs;
 * Will create object files in build/ as to not clutter the current directory;
 * Will compile automatically every .c/.cpp files located in src/ (or any other files which extensiosn is set);
 * Will save git's commit id and git's diff from HEAD as to know what have changed.

First time usage
-------------------------
First, edit the main Makefile:
 * Line 17: Set "BIN" to the executable name to build;
 * Line 20-21: Change the headers' and sources' extensions ("SRCEXT" and "HEADEXT");
 * Line 22: Set "LANGUAGE" to C or CPP;
 * Line 30: Add your own CFLAGS and/or LDFLAGS.

To build a library instead of an executable, uncomment line 34 and change "LIB" at line 16 to the library's name.


Usage
-------------------------
All different options can be called at once as "make" targets. A minimum option to use is the compiler, for example:
`$ make gcc`
to build with gcc/g++.

Other options can be mixed.


Compilers
-----------------
Different compilers supported:
 * gcc: GNU Compiler Collections;
 * icc: Intel C++ Compilers;
 * clang: Low-Level Virtual Machine (LLVM) C/C++ front-end;
 * pgi: Portland Group compiler;
 * pathscale: Pathscale compiler;
 * sun studioX: Sun's Studio compiler set (where X is 7, 11 or 12);
 * sharcnet: Use "cc" or "CC" on Sharcnet to choose the best compiler per cluster.

Other options
-----------------
Other options are supported:
 * clean: Clean object files located in **build/***;
 * optimized: Create an optimized build;
 * mpi: Compile MPI support. Will define "PARALLEL_MPI" for "#ifdef" in the code;
 * omp: Compile OpenMP support. Will define "PARALLEL_OMP" for "#ifdef" in the code;
 * ocl: Compile OpenCL support. Will define "GPGPU_OPENCL" for "#ifdef" in the code;
 * ds: Include debug symbols, even in an optimized build;
 * doxygen/doc: Build doxygen documention in **doc/**;
 * clean_bin/cb: Just clean (delete) the binary;
 * clean_obj/co: Just clean (delete) the object files;
 * clean_doc: Just clean (delete) the documentions in **doc/**;
 * clean_dat/cd: Just clean (delete) the output folder **output/**;
 * distclean/d: Clean everything;
 * run/r: Run the program (after compilation), piping output to **output/make_run.log**. _softlimit_ from daemontools (http://cr.yp.to/daemontools.html) is needed as it will prevent program to take more then 500 MB of RAM;
 * p/pk/pkv/pkd: Run the program (after compilation) through _mpirun_. Set **NP** to choose number of processes (_make pk NP=5_ for example) The _k_ version will launch terminal windows (see makefiles/Makefile.rules line 233 for setting which terminal). The _v_ version runs through valgrind, the _g_ version through gdb;
 * count: Count the number of lines of the project;
 * cppcheck/check: Run cppcheck on the project;
 * valgrind/v/vv: Run program through valgrind. _vv_ version makes valgrind more verbose;
 * cachegrind/cg: Run program through valgrind's cachegrind;
 * gdb/g: Run program through gdb, the GNU Debugger;

