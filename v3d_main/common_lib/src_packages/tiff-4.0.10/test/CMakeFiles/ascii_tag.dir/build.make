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
CMAKE_SOURCE_DIR = F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10

# Include any dependencies generated for this target.
include test/CMakeFiles/ascii_tag.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/ascii_tag.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/ascii_tag.dir/flags.make

test/CMakeFiles/ascii_tag.dir/ascii_tag.c.obj: test/CMakeFiles/ascii_tag.dir/flags.make
test/CMakeFiles/ascii_tag.dir/ascii_tag.c.obj: test/CMakeFiles/ascii_tag.dir/includes_C.rsp
test/CMakeFiles/ascii_tag.dir/ascii_tag.c.obj: test/ascii_tag.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/ascii_tag.dir/ascii_tag.c.obj"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\test && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\ascii_tag.dir\ascii_tag.c.obj -c F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\test\ascii_tag.c

test/CMakeFiles/ascii_tag.dir/ascii_tag.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ascii_tag.dir/ascii_tag.c.i"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\test && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\test\ascii_tag.c > CMakeFiles\ascii_tag.dir\ascii_tag.c.i

test/CMakeFiles/ascii_tag.dir/ascii_tag.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ascii_tag.dir/ascii_tag.c.s"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\test && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\test\ascii_tag.c -o CMakeFiles\ascii_tag.dir\ascii_tag.c.s

# Object files for target ascii_tag
ascii_tag_OBJECTS = \
"CMakeFiles/ascii_tag.dir/ascii_tag.c.obj"

# External object files for target ascii_tag
ascii_tag_EXTERNAL_OBJECTS =

test/ascii_tag.exe: test/CMakeFiles/ascii_tag.dir/ascii_tag.c.obj
test/ascii_tag.exe: test/CMakeFiles/ascii_tag.dir/build.make
test/ascii_tag.exe: libtiff/libtiff.dll.a
test/ascii_tag.exe: port/libport.a
test/ascii_tag.exe: F:/idea/Library/lib/z.lib
test/ascii_tag.exe: F:/idea/Library/lib/libjpeg.lib
test/ascii_tag.exe: F:/idea/Library/lib/liblzma.lib
test/ascii_tag.exe: F:/idea/Library/lib/libzstd.lib
test/ascii_tag.exe: test/CMakeFiles/ascii_tag.dir/linklibs.rsp
test/ascii_tag.exe: test/CMakeFiles/ascii_tag.dir/objects1.rsp
test/ascii_tag.exe: test/CMakeFiles/ascii_tag.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ascii_tag.exe"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ascii_tag.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/ascii_tag.dir/build: test/ascii_tag.exe

.PHONY : test/CMakeFiles/ascii_tag.dir/build

test/CMakeFiles/ascii_tag.dir/clean:
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\test && $(CMAKE_COMMAND) -P CMakeFiles\ascii_tag.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/ascii_tag.dir/clean

test/CMakeFiles/ascii_tag.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10 F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\test F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10 F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\test F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\test\CMakeFiles\ascii_tag.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/ascii_tag.dir/depend

