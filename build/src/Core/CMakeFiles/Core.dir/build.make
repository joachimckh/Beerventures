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
include src/Core/CMakeFiles/Core.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/Core/CMakeFiles/Core.dir/compiler_depend.make

# Include the progress variables for this target.
include src/Core/CMakeFiles/Core.dir/progress.make

# Include the compile flags for this target's objects.
include src/Core/CMakeFiles/Core.dir/flags.make

src/Core/CMakeFiles/Core.dir/BColor.cxx.o: src/Core/CMakeFiles/Core.dir/flags.make
src/Core/CMakeFiles/Core.dir/BColor.cxx.o: /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BColor.cxx
src/Core/CMakeFiles/Core.dir/BColor.cxx.o: src/Core/CMakeFiles/Core.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/emilgormnielsen/CodingProjects/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Core/CMakeFiles/Core.dir/BColor.cxx.o"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Core/CMakeFiles/Core.dir/BColor.cxx.o -MF CMakeFiles/Core.dir/BColor.cxx.o.d -o CMakeFiles/Core.dir/BColor.cxx.o -c /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BColor.cxx

src/Core/CMakeFiles/Core.dir/BColor.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Core.dir/BColor.cxx.i"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BColor.cxx > CMakeFiles/Core.dir/BColor.cxx.i

src/Core/CMakeFiles/Core.dir/BColor.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Core.dir/BColor.cxx.s"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BColor.cxx -o CMakeFiles/Core.dir/BColor.cxx.s

src/Core/CMakeFiles/Core.dir/BObject.cxx.o: src/Core/CMakeFiles/Core.dir/flags.make
src/Core/CMakeFiles/Core.dir/BObject.cxx.o: /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BObject.cxx
src/Core/CMakeFiles/Core.dir/BObject.cxx.o: src/Core/CMakeFiles/Core.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/emilgormnielsen/CodingProjects/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/Core/CMakeFiles/Core.dir/BObject.cxx.o"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Core/CMakeFiles/Core.dir/BObject.cxx.o -MF CMakeFiles/Core.dir/BObject.cxx.o.d -o CMakeFiles/Core.dir/BObject.cxx.o -c /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BObject.cxx

src/Core/CMakeFiles/Core.dir/BObject.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Core.dir/BObject.cxx.i"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BObject.cxx > CMakeFiles/Core.dir/BObject.cxx.i

src/Core/CMakeFiles/Core.dir/BObject.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Core.dir/BObject.cxx.s"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BObject.cxx -o CMakeFiles/Core.dir/BObject.cxx.s

src/Core/CMakeFiles/Core.dir/BUnit.cxx.o: src/Core/CMakeFiles/Core.dir/flags.make
src/Core/CMakeFiles/Core.dir/BUnit.cxx.o: /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BUnit.cxx
src/Core/CMakeFiles/Core.dir/BUnit.cxx.o: src/Core/CMakeFiles/Core.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/emilgormnielsen/CodingProjects/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/Core/CMakeFiles/Core.dir/BUnit.cxx.o"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Core/CMakeFiles/Core.dir/BUnit.cxx.o -MF CMakeFiles/Core.dir/BUnit.cxx.o.d -o CMakeFiles/Core.dir/BUnit.cxx.o -c /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BUnit.cxx

src/Core/CMakeFiles/Core.dir/BUnit.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Core.dir/BUnit.cxx.i"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BUnit.cxx > CMakeFiles/Core.dir/BUnit.cxx.i

src/Core/CMakeFiles/Core.dir/BUnit.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Core.dir/BUnit.cxx.s"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BUnit.cxx -o CMakeFiles/Core.dir/BUnit.cxx.s

src/Core/CMakeFiles/Core.dir/BPlayer.cxx.o: src/Core/CMakeFiles/Core.dir/flags.make
src/Core/CMakeFiles/Core.dir/BPlayer.cxx.o: /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BPlayer.cxx
src/Core/CMakeFiles/Core.dir/BPlayer.cxx.o: src/Core/CMakeFiles/Core.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/emilgormnielsen/CodingProjects/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/Core/CMakeFiles/Core.dir/BPlayer.cxx.o"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Core/CMakeFiles/Core.dir/BPlayer.cxx.o -MF CMakeFiles/Core.dir/BPlayer.cxx.o.d -o CMakeFiles/Core.dir/BPlayer.cxx.o -c /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BPlayer.cxx

src/Core/CMakeFiles/Core.dir/BPlayer.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Core.dir/BPlayer.cxx.i"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BPlayer.cxx > CMakeFiles/Core.dir/BPlayer.cxx.i

src/Core/CMakeFiles/Core.dir/BPlayer.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Core.dir/BPlayer.cxx.s"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BPlayer.cxx -o CMakeFiles/Core.dir/BPlayer.cxx.s

src/Core/CMakeFiles/Core.dir/BInventory.cxx.o: src/Core/CMakeFiles/Core.dir/flags.make
src/Core/CMakeFiles/Core.dir/BInventory.cxx.o: /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BInventory.cxx
src/Core/CMakeFiles/Core.dir/BInventory.cxx.o: src/Core/CMakeFiles/Core.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/emilgormnielsen/CodingProjects/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/Core/CMakeFiles/Core.dir/BInventory.cxx.o"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Core/CMakeFiles/Core.dir/BInventory.cxx.o -MF CMakeFiles/Core.dir/BInventory.cxx.o.d -o CMakeFiles/Core.dir/BInventory.cxx.o -c /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BInventory.cxx

src/Core/CMakeFiles/Core.dir/BInventory.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Core.dir/BInventory.cxx.i"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BInventory.cxx > CMakeFiles/Core.dir/BInventory.cxx.i

src/Core/CMakeFiles/Core.dir/BInventory.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Core.dir/BInventory.cxx.s"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BInventory.cxx -o CMakeFiles/Core.dir/BInventory.cxx.s

src/Core/CMakeFiles/Core.dir/BHUD.cxx.o: src/Core/CMakeFiles/Core.dir/flags.make
src/Core/CMakeFiles/Core.dir/BHUD.cxx.o: /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BHUD.cxx
src/Core/CMakeFiles/Core.dir/BHUD.cxx.o: src/Core/CMakeFiles/Core.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/emilgormnielsen/CodingProjects/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/Core/CMakeFiles/Core.dir/BHUD.cxx.o"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Core/CMakeFiles/Core.dir/BHUD.cxx.o -MF CMakeFiles/Core.dir/BHUD.cxx.o.d -o CMakeFiles/Core.dir/BHUD.cxx.o -c /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BHUD.cxx

src/Core/CMakeFiles/Core.dir/BHUD.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Core.dir/BHUD.cxx.i"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BHUD.cxx > CMakeFiles/Core.dir/BHUD.cxx.i

src/Core/CMakeFiles/Core.dir/BHUD.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Core.dir/BHUD.cxx.s"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core/BHUD.cxx -o CMakeFiles/Core.dir/BHUD.cxx.s

# Object files for target Core
Core_OBJECTS = \
"CMakeFiles/Core.dir/BColor.cxx.o" \
"CMakeFiles/Core.dir/BObject.cxx.o" \
"CMakeFiles/Core.dir/BUnit.cxx.o" \
"CMakeFiles/Core.dir/BPlayer.cxx.o" \
"CMakeFiles/Core.dir/BInventory.cxx.o" \
"CMakeFiles/Core.dir/BHUD.cxx.o"

# External object files for target Core
Core_EXTERNAL_OBJECTS =

src/Core/libCore.a: src/Core/CMakeFiles/Core.dir/BColor.cxx.o
src/Core/libCore.a: src/Core/CMakeFiles/Core.dir/BObject.cxx.o
src/Core/libCore.a: src/Core/CMakeFiles/Core.dir/BUnit.cxx.o
src/Core/libCore.a: src/Core/CMakeFiles/Core.dir/BPlayer.cxx.o
src/Core/libCore.a: src/Core/CMakeFiles/Core.dir/BInventory.cxx.o
src/Core/libCore.a: src/Core/CMakeFiles/Core.dir/BHUD.cxx.o
src/Core/libCore.a: src/Core/CMakeFiles/Core.dir/build.make
src/Core/libCore.a: src/Core/CMakeFiles/Core.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/emilgormnielsen/CodingProjects/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library libCore.a"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && $(CMAKE_COMMAND) -P CMakeFiles/Core.dir/cmake_clean_target.cmake
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Core.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Core/CMakeFiles/Core.dir/build: src/Core/libCore.a
.PHONY : src/Core/CMakeFiles/Core.dir/build

src/Core/CMakeFiles/Core.dir/clean:
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core && $(CMAKE_COMMAND) -P CMakeFiles/Core.dir/cmake_clean.cmake
.PHONY : src/Core/CMakeFiles/Core.dir/clean

src/Core/CMakeFiles/Core.dir/depend:
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/emilgormnielsen/CodingProjects/Beerventures /Users/emilgormnielsen/CodingProjects/Beerventures/src/Core /Users/emilgormnielsen/CodingProjects/Beerventures/build /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/Core/CMakeFiles/Core.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/Core/CMakeFiles/Core.dir/depend

