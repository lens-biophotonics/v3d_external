# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = F:\Cmake\bin\cmake.exe

# The command to remove a file.
RM = F:\Cmake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src

# Include any dependencies generated for this target.
include Testing/air/CMakeFiles/test_amath.dir/depend.make

# Include the progress variables for this target.
include Testing/air/CMakeFiles/test_amath.dir/progress.make

# Include the compile flags for this target's objects.
include Testing/air/CMakeFiles/test_amath.dir/flags.make

Testing/air/CMakeFiles/test_amath.dir/amath.obj: Testing/air/CMakeFiles/test_amath.dir/flags.make
Testing/air/CMakeFiles/test_amath.dir/amath.obj: Testing/air/CMakeFiles/test_amath.dir/includes_C.rsp
Testing/air/CMakeFiles/test_amath.dir/amath.obj: Testing/air/amath.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Testing/air/CMakeFiles/test_amath.dir/amath.obj"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\Testing\air && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\test_amath.dir\amath.obj -c F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\Testing\air\amath.c

Testing/air/CMakeFiles/test_amath.dir/amath.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_amath.dir/amath.i"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\Testing\air && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\Testing\air\amath.c > CMakeFiles\test_amath.dir\amath.i

Testing/air/CMakeFiles/test_amath.dir/amath.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_amath.dir/amath.s"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\Testing\air && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\Testing\air\amath.c -o CMakeFiles\test_amath.dir\amath.s

# Object files for target test_amath
test_amath_OBJECTS = \
"CMakeFiles/test_amath.dir/amath.obj"

# External object files for target test_amath
test_amath_EXTERNAL_OBJECTS =

bin/test_amath.exe: Testing/air/CMakeFiles/test_amath.dir/amath.obj
bin/test_amath.exe: Testing/air/CMakeFiles/test_amath.dir/build.make
bin/test_amath.exe: bin/libteem.a
bin/test_amath.exe: F:/idea/Library/lib/libbz2.lib
bin/test_amath.exe: F:/idea/Library/lib/z.lib
bin/test_amath.exe: F:/idea/Library/lib/libpng.lib
bin/test_amath.exe: F:/idea/Library/lib/z.lib
bin/test_amath.exe: F:/idea/Library/lib/libpng.lib
bin/test_amath.exe: Testing/air/CMakeFiles/test_amath.dir/linklibs.rsp
bin/test_amath.exe: Testing/air/CMakeFiles/test_amath.dir/objects1.rsp
bin/test_amath.exe: Testing/air/CMakeFiles/test_amath.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ..\..\bin\test_amath.exe"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\Testing\air && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\test_amath.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Testing/air/CMakeFiles/test_amath.dir/build: bin/test_amath.exe

.PHONY : Testing/air/CMakeFiles/test_amath.dir/build

Testing/air/CMakeFiles/test_amath.dir/clean:
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\Testing\air && $(CMAKE_COMMAND) -P CMakeFiles\test_amath.dir\cmake_clean.cmake
.PHONY : Testing/air/CMakeFiles/test_amath.dir/clean

Testing/air/CMakeFiles/test_amath.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\Testing\air F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\Testing\air F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\Testing\air\CMakeFiles\test_amath.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : Testing/air/CMakeFiles/test_amath.dir/depend

