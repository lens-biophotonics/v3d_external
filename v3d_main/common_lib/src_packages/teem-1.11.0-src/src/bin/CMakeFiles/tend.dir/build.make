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
include src/bin/CMakeFiles/tend.dir/depend.make

# Include the progress variables for this target.
include src/bin/CMakeFiles/tend.dir/progress.make

# Include the compile flags for this target's objects.
include src/bin/CMakeFiles/tend.dir/flags.make

src/bin/CMakeFiles/tend.dir/tend.obj: src/bin/CMakeFiles/tend.dir/flags.make
src/bin/CMakeFiles/tend.dir/tend.obj: src/bin/CMakeFiles/tend.dir/includes_C.rsp
src/bin/CMakeFiles/tend.dir/tend.obj: src/bin/tend.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/bin/CMakeFiles/tend.dir/tend.obj"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\src\bin && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\tend.dir\tend.obj -c F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\src\bin\tend.c

src/bin/CMakeFiles/tend.dir/tend.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tend.dir/tend.i"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\src\bin && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\src\bin\tend.c > CMakeFiles\tend.dir\tend.i

src/bin/CMakeFiles/tend.dir/tend.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tend.dir/tend.s"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\src\bin && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\src\bin\tend.c -o CMakeFiles\tend.dir\tend.s

# Object files for target tend
tend_OBJECTS = \
"CMakeFiles/tend.dir/tend.obj"

# External object files for target tend
tend_EXTERNAL_OBJECTS =

bin/tend.exe: src/bin/CMakeFiles/tend.dir/tend.obj
bin/tend.exe: src/bin/CMakeFiles/tend.dir/build.make
bin/tend.exe: bin/libteem.a
bin/tend.exe: F:/idea/Library/lib/libbz2.lib
bin/tend.exe: F:/idea/Library/lib/z.lib
bin/tend.exe: F:/idea/Library/lib/libpng.lib
bin/tend.exe: F:/idea/Library/lib/z.lib
bin/tend.exe: F:/idea/Library/lib/libpng.lib
bin/tend.exe: src/bin/CMakeFiles/tend.dir/linklibs.rsp
bin/tend.exe: src/bin/CMakeFiles/tend.dir/objects1.rsp
bin/tend.exe: src/bin/CMakeFiles/tend.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ..\..\bin\tend.exe"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\src\bin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\tend.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/bin/CMakeFiles/tend.dir/build: bin/tend.exe

.PHONY : src/bin/CMakeFiles/tend.dir/build

src/bin/CMakeFiles/tend.dir/clean:
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\src\bin && $(CMAKE_COMMAND) -P CMakeFiles\tend.dir\cmake_clean.cmake
.PHONY : src/bin/CMakeFiles/tend.dir/clean

src/bin/CMakeFiles/tend.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\src\bin F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\src\bin F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\teem-1.11.0-src\src\bin\CMakeFiles\tend.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : src/bin/CMakeFiles/tend.dir/depend

