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
include tools/CMakeFiles/thumbnail.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/thumbnail.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/thumbnail.dir/flags.make

tools/CMakeFiles/thumbnail.dir/thumbnail.c.obj: tools/CMakeFiles/thumbnail.dir/flags.make
tools/CMakeFiles/thumbnail.dir/thumbnail.c.obj: tools/CMakeFiles/thumbnail.dir/includes_C.rsp
tools/CMakeFiles/thumbnail.dir/thumbnail.c.obj: tools/thumbnail.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tools/CMakeFiles/thumbnail.dir/thumbnail.c.obj"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\tools && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\thumbnail.dir\thumbnail.c.obj -c F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\tools\thumbnail.c

tools/CMakeFiles/thumbnail.dir/thumbnail.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/thumbnail.dir/thumbnail.c.i"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\tools && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\tools\thumbnail.c > CMakeFiles\thumbnail.dir\thumbnail.c.i

tools/CMakeFiles/thumbnail.dir/thumbnail.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/thumbnail.dir/thumbnail.c.s"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\tools && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\tools\thumbnail.c -o CMakeFiles\thumbnail.dir\thumbnail.c.s

# Object files for target thumbnail
thumbnail_OBJECTS = \
"CMakeFiles/thumbnail.dir/thumbnail.c.obj"

# External object files for target thumbnail
thumbnail_EXTERNAL_OBJECTS =

tools/thumbnail.exe: tools/CMakeFiles/thumbnail.dir/thumbnail.c.obj
tools/thumbnail.exe: tools/CMakeFiles/thumbnail.dir/build.make
tools/thumbnail.exe: libtiff/libtiff.dll.a
tools/thumbnail.exe: port/libport.a
tools/thumbnail.exe: F:/idea/Library/lib/z.lib
tools/thumbnail.exe: F:/idea/Library/lib/libjpeg.lib
tools/thumbnail.exe: F:/idea/Library/lib/liblzma.lib
tools/thumbnail.exe: F:/idea/Library/lib/libzstd.lib
tools/thumbnail.exe: tools/CMakeFiles/thumbnail.dir/linklibs.rsp
tools/thumbnail.exe: tools/CMakeFiles/thumbnail.dir/objects1.rsp
tools/thumbnail.exe: tools/CMakeFiles/thumbnail.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable thumbnail.exe"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\thumbnail.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/thumbnail.dir/build: tools/thumbnail.exe

.PHONY : tools/CMakeFiles/thumbnail.dir/build

tools/CMakeFiles/thumbnail.dir/clean:
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\tools && $(CMAKE_COMMAND) -P CMakeFiles\thumbnail.dir\cmake_clean.cmake
.PHONY : tools/CMakeFiles/thumbnail.dir/clean

tools/CMakeFiles/thumbnail.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10 F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\tools F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10 F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\tools F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\tools\CMakeFiles\thumbnail.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/thumbnail.dir/depend
