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
include contrib/addtiffo/CMakeFiles/addtiffo.dir/depend.make

# Include the progress variables for this target.
include contrib/addtiffo/CMakeFiles/addtiffo.dir/progress.make

# Include the compile flags for this target's objects.
include contrib/addtiffo/CMakeFiles/addtiffo.dir/flags.make

contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.obj: contrib/addtiffo/CMakeFiles/addtiffo.dir/flags.make
contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.obj: contrib/addtiffo/CMakeFiles/addtiffo.dir/includes_C.rsp
contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.obj: contrib/addtiffo/addtiffo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.obj"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\addtiffo.dir\addtiffo.c.obj -c F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo\addtiffo.c

contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/addtiffo.dir/addtiffo.c.i"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo\addtiffo.c > CMakeFiles\addtiffo.dir\addtiffo.c.i

contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/addtiffo.dir/addtiffo.c.s"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo\addtiffo.c -o CMakeFiles\addtiffo.dir\addtiffo.c.s

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.obj: contrib/addtiffo/CMakeFiles/addtiffo.dir/flags.make
contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.obj: contrib/addtiffo/CMakeFiles/addtiffo.dir/includes_C.rsp
contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.obj: contrib/addtiffo/tif_overview.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.obj"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\addtiffo.dir\tif_overview.c.obj -c F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo\tif_overview.c

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/addtiffo.dir/tif_overview.c.i"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo\tif_overview.c > CMakeFiles\addtiffo.dir\tif_overview.c.i

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/addtiffo.dir/tif_overview.c.s"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo\tif_overview.c -o CMakeFiles\addtiffo.dir\tif_overview.c.s

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.obj: contrib/addtiffo/CMakeFiles/addtiffo.dir/flags.make
contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.obj: contrib/addtiffo/CMakeFiles/addtiffo.dir/includes_C.rsp
contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.obj: contrib/addtiffo/tif_ovrcache.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.obj"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\addtiffo.dir\tif_ovrcache.c.obj -c F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo\tif_ovrcache.c

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/addtiffo.dir/tif_ovrcache.c.i"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo\tif_ovrcache.c > CMakeFiles\addtiffo.dir\tif_ovrcache.c.i

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/addtiffo.dir/tif_ovrcache.c.s"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo && C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo\tif_ovrcache.c -o CMakeFiles\addtiffo.dir\tif_ovrcache.c.s

# Object files for target addtiffo
addtiffo_OBJECTS = \
"CMakeFiles/addtiffo.dir/addtiffo.c.obj" \
"CMakeFiles/addtiffo.dir/tif_overview.c.obj" \
"CMakeFiles/addtiffo.dir/tif_ovrcache.c.obj"

# External object files for target addtiffo
addtiffo_EXTERNAL_OBJECTS =

contrib/addtiffo/addtiffo.exe: contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.obj
contrib/addtiffo/addtiffo.exe: contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.obj
contrib/addtiffo/addtiffo.exe: contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.obj
contrib/addtiffo/addtiffo.exe: contrib/addtiffo/CMakeFiles/addtiffo.dir/build.make
contrib/addtiffo/addtiffo.exe: libtiff/libtiff.dll.a
contrib/addtiffo/addtiffo.exe: port/libport.a
contrib/addtiffo/addtiffo.exe: F:/idea/Library/lib/z.lib
contrib/addtiffo/addtiffo.exe: F:/idea/Library/lib/libjpeg.lib
contrib/addtiffo/addtiffo.exe: F:/idea/Library/lib/liblzma.lib
contrib/addtiffo/addtiffo.exe: F:/idea/Library/lib/libzstd.lib
contrib/addtiffo/addtiffo.exe: contrib/addtiffo/CMakeFiles/addtiffo.dir/linklibs.rsp
contrib/addtiffo/addtiffo.exe: contrib/addtiffo/CMakeFiles/addtiffo.dir/objects1.rsp
contrib/addtiffo/addtiffo.exe: contrib/addtiffo/CMakeFiles/addtiffo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable addtiffo.exe"
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\addtiffo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contrib/addtiffo/CMakeFiles/addtiffo.dir/build: contrib/addtiffo/addtiffo.exe

.PHONY : contrib/addtiffo/CMakeFiles/addtiffo.dir/build

contrib/addtiffo/CMakeFiles/addtiffo.dir/clean:
	cd /d F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo && $(CMAKE_COMMAND) -P CMakeFiles\addtiffo.dir\cmake_clean.cmake
.PHONY : contrib/addtiffo/CMakeFiles/addtiffo.dir/clean

contrib/addtiffo/CMakeFiles/addtiffo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10 F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10 F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo F:\v3d_mingw1\v3d_external\v3d_main\common_lib\src_packages\tiff-4.0.10\contrib\addtiffo\CMakeFiles\addtiffo.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/addtiffo/CMakeFiles/addtiffo.dir/depend

