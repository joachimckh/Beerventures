# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.27.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.27.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/emilgormnielsen/CodingProjects/Beerventures

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/emilgormnielsen/CodingProjects/Beerventures/build

# Include any dependencies generated for this target.
include src/CMakeFiles/Beerventures.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/Beerventures.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/Beerventures.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/Beerventures.dir/flags.make

src/CMakeFiles/Beerventures.dir/main.cxx.o: src/CMakeFiles/Beerventures.dir/flags.make
src/CMakeFiles/Beerventures.dir/main.cxx.o: /Users/emilgormnielsen/CodingProjects/Beerventures/src/main.cxx
src/CMakeFiles/Beerventures.dir/main.cxx.o: src/CMakeFiles/Beerventures.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/emilgormnielsen/CodingProjects/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/Beerventures.dir/main.cxx.o"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/Beerventures.dir/main.cxx.o -MF CMakeFiles/Beerventures.dir/main.cxx.o.d -o CMakeFiles/Beerventures.dir/main.cxx.o -c /Users/emilgormnielsen/CodingProjects/Beerventures/src/main.cxx

src/CMakeFiles/Beerventures.dir/main.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Beerventures.dir/main.cxx.i"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/emilgormnielsen/CodingProjects/Beerventures/src/main.cxx > CMakeFiles/Beerventures.dir/main.cxx.i

src/CMakeFiles/Beerventures.dir/main.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Beerventures.dir/main.cxx.s"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/emilgormnielsen/CodingProjects/Beerventures/src/main.cxx -o CMakeFiles/Beerventures.dir/main.cxx.s

# Object files for target Beerventures
Beerventures_OBJECTS = \
"CMakeFiles/Beerventures.dir/main.cxx.o"

# External object files for target Beerventures
Beerventures_EXTERNAL_OBJECTS =

src/Beerventures: src/CMakeFiles/Beerventures.dir/main.cxx.o
src/Beerventures: src/CMakeFiles/Beerventures.dir/build.make
src/Beerventures: /usr/local/Cellar/sdl2/2.28.4/lib/libSDL2.dylib
src/Beerventures: src/Core/libCore.a
src/Beerventures: src/CMakeFiles/Beerventures.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/emilgormnielsen/CodingProjects/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Beerventures"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Beerventures.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/Beerventures.dir/build: src/Beerventures
.PHONY : src/CMakeFiles/Beerventures.dir/build

src/CMakeFiles/Beerventures.dir/clean:
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src && $(CMAKE_COMMAND) -P CMakeFiles/Beerventures.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/Beerventures.dir/clean

src/CMakeFiles/Beerventures.dir/depend:
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/emilgormnielsen/CodingProjects/Beerventures /Users/emilgormnielsen/CodingProjects/Beerventures/src /Users/emilgormnielsen/CodingProjects/Beerventures/build /Users/emilgormnielsen/CodingProjects/Beerventures/build/src /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/CMakeFiles/Beerventures.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/CMakeFiles/Beerventures.dir/depend

