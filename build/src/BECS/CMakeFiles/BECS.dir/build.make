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
include src/BECS/CMakeFiles/BECS.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/BECS/CMakeFiles/BECS.dir/compiler_depend.make

# Include the progress variables for this target.
include src/BECS/CMakeFiles/BECS.dir/progress.make

# Include the compile flags for this target's objects.
include src/BECS/CMakeFiles/BECS.dir/flags.make

src/BECS/CMakeFiles/BECS.dir/BComponents.cxx.o: src/BECS/CMakeFiles/BECS.dir/flags.make
src/BECS/CMakeFiles/BECS.dir/BComponents.cxx.o: /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BComponents.cxx
src/BECS/CMakeFiles/BECS.dir/BComponents.cxx.o: src/BECS/CMakeFiles/BECS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/emilgormnielsen/CodingProjects/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/BECS/CMakeFiles/BECS.dir/BComponents.cxx.o"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/BECS/CMakeFiles/BECS.dir/BComponents.cxx.o -MF CMakeFiles/BECS.dir/BComponents.cxx.o.d -o CMakeFiles/BECS.dir/BComponents.cxx.o -c /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BComponents.cxx

src/BECS/CMakeFiles/BECS.dir/BComponents.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/BECS.dir/BComponents.cxx.i"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BComponents.cxx > CMakeFiles/BECS.dir/BComponents.cxx.i

src/BECS/CMakeFiles/BECS.dir/BComponents.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/BECS.dir/BComponents.cxx.s"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BComponents.cxx -o CMakeFiles/BECS.dir/BComponents.cxx.s

src/BECS/CMakeFiles/BECS.dir/BECS.cxx.o: src/BECS/CMakeFiles/BECS.dir/flags.make
src/BECS/CMakeFiles/BECS.dir/BECS.cxx.o: /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BECS.cxx
src/BECS/CMakeFiles/BECS.dir/BECS.cxx.o: src/BECS/CMakeFiles/BECS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/emilgormnielsen/CodingProjects/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/BECS/CMakeFiles/BECS.dir/BECS.cxx.o"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/BECS/CMakeFiles/BECS.dir/BECS.cxx.o -MF CMakeFiles/BECS.dir/BECS.cxx.o.d -o CMakeFiles/BECS.dir/BECS.cxx.o -c /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BECS.cxx

src/BECS/CMakeFiles/BECS.dir/BECS.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/BECS.dir/BECS.cxx.i"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BECS.cxx > CMakeFiles/BECS.dir/BECS.cxx.i

src/BECS/CMakeFiles/BECS.dir/BECS.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/BECS.dir/BECS.cxx.s"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BECS.cxx -o CMakeFiles/BECS.dir/BECS.cxx.s

src/BECS/CMakeFiles/BECS.dir/BTransformComponent.cxx.o: src/BECS/CMakeFiles/BECS.dir/flags.make
src/BECS/CMakeFiles/BECS.dir/BTransformComponent.cxx.o: /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BTransformComponent.cxx
src/BECS/CMakeFiles/BECS.dir/BTransformComponent.cxx.o: src/BECS/CMakeFiles/BECS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/emilgormnielsen/CodingProjects/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/BECS/CMakeFiles/BECS.dir/BTransformComponent.cxx.o"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/BECS/CMakeFiles/BECS.dir/BTransformComponent.cxx.o -MF CMakeFiles/BECS.dir/BTransformComponent.cxx.o.d -o CMakeFiles/BECS.dir/BTransformComponent.cxx.o -c /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BTransformComponent.cxx

src/BECS/CMakeFiles/BECS.dir/BTransformComponent.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/BECS.dir/BTransformComponent.cxx.i"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BTransformComponent.cxx > CMakeFiles/BECS.dir/BTransformComponent.cxx.i

src/BECS/CMakeFiles/BECS.dir/BTransformComponent.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/BECS.dir/BTransformComponent.cxx.s"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BTransformComponent.cxx -o CMakeFiles/BECS.dir/BTransformComponent.cxx.s

src/BECS/CMakeFiles/BECS.dir/BSpriteComponent.cxx.o: src/BECS/CMakeFiles/BECS.dir/flags.make
src/BECS/CMakeFiles/BECS.dir/BSpriteComponent.cxx.o: /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BSpriteComponent.cxx
src/BECS/CMakeFiles/BECS.dir/BSpriteComponent.cxx.o: src/BECS/CMakeFiles/BECS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/emilgormnielsen/CodingProjects/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/BECS/CMakeFiles/BECS.dir/BSpriteComponent.cxx.o"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/BECS/CMakeFiles/BECS.dir/BSpriteComponent.cxx.o -MF CMakeFiles/BECS.dir/BSpriteComponent.cxx.o.d -o CMakeFiles/BECS.dir/BSpriteComponent.cxx.o -c /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BSpriteComponent.cxx

src/BECS/CMakeFiles/BECS.dir/BSpriteComponent.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/BECS.dir/BSpriteComponent.cxx.i"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BSpriteComponent.cxx > CMakeFiles/BECS.dir/BSpriteComponent.cxx.i

src/BECS/CMakeFiles/BECS.dir/BSpriteComponent.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/BECS.dir/BSpriteComponent.cxx.s"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BSpriteComponent.cxx -o CMakeFiles/BECS.dir/BSpriteComponent.cxx.s

src/BECS/CMakeFiles/BECS.dir/BKeyBoardController.cxx.o: src/BECS/CMakeFiles/BECS.dir/flags.make
src/BECS/CMakeFiles/BECS.dir/BKeyBoardController.cxx.o: /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BKeyBoardController.cxx
src/BECS/CMakeFiles/BECS.dir/BKeyBoardController.cxx.o: src/BECS/CMakeFiles/BECS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/emilgormnielsen/CodingProjects/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/BECS/CMakeFiles/BECS.dir/BKeyBoardController.cxx.o"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/BECS/CMakeFiles/BECS.dir/BKeyBoardController.cxx.o -MF CMakeFiles/BECS.dir/BKeyBoardController.cxx.o.d -o CMakeFiles/BECS.dir/BKeyBoardController.cxx.o -c /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BKeyBoardController.cxx

src/BECS/CMakeFiles/BECS.dir/BKeyBoardController.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/BECS.dir/BKeyBoardController.cxx.i"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BKeyBoardController.cxx > CMakeFiles/BECS.dir/BKeyBoardController.cxx.i

src/BECS/CMakeFiles/BECS.dir/BKeyBoardController.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/BECS.dir/BKeyBoardController.cxx.s"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS/BKeyBoardController.cxx -o CMakeFiles/BECS.dir/BKeyBoardController.cxx.s

# Object files for target BECS
BECS_OBJECTS = \
"CMakeFiles/BECS.dir/BComponents.cxx.o" \
"CMakeFiles/BECS.dir/BECS.cxx.o" \
"CMakeFiles/BECS.dir/BTransformComponent.cxx.o" \
"CMakeFiles/BECS.dir/BSpriteComponent.cxx.o" \
"CMakeFiles/BECS.dir/BKeyBoardController.cxx.o"

# External object files for target BECS
BECS_EXTERNAL_OBJECTS =

src/BECS/libBECS.a: src/BECS/CMakeFiles/BECS.dir/BComponents.cxx.o
src/BECS/libBECS.a: src/BECS/CMakeFiles/BECS.dir/BECS.cxx.o
src/BECS/libBECS.a: src/BECS/CMakeFiles/BECS.dir/BTransformComponent.cxx.o
src/BECS/libBECS.a: src/BECS/CMakeFiles/BECS.dir/BSpriteComponent.cxx.o
src/BECS/libBECS.a: src/BECS/CMakeFiles/BECS.dir/BKeyBoardController.cxx.o
src/BECS/libBECS.a: src/BECS/CMakeFiles/BECS.dir/build.make
src/BECS/libBECS.a: src/BECS/CMakeFiles/BECS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/emilgormnielsen/CodingProjects/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library libBECS.a"
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && $(CMAKE_COMMAND) -P CMakeFiles/BECS.dir/cmake_clean_target.cmake
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BECS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/BECS/CMakeFiles/BECS.dir/build: src/BECS/libBECS.a
.PHONY : src/BECS/CMakeFiles/BECS.dir/build

src/BECS/CMakeFiles/BECS.dir/clean:
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS && $(CMAKE_COMMAND) -P CMakeFiles/BECS.dir/cmake_clean.cmake
.PHONY : src/BECS/CMakeFiles/BECS.dir/clean

src/BECS/CMakeFiles/BECS.dir/depend:
	cd /Users/emilgormnielsen/CodingProjects/Beerventures/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/emilgormnielsen/CodingProjects/Beerventures /Users/emilgormnielsen/CodingProjects/Beerventures/src/BECS /Users/emilgormnielsen/CodingProjects/Beerventures/build /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS /Users/emilgormnielsen/CodingProjects/Beerventures/build/src/BECS/CMakeFiles/BECS.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/BECS/CMakeFiles/BECS.dir/depend

