# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build

# Include any dependencies generated for this target.
include src/Game/CMakeFiles/BECS.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/Game/CMakeFiles/BECS.dir/compiler_depend.make

# Include the progress variables for this target.
include src/Game/CMakeFiles/BECS.dir/progress.make

# Include the compile flags for this target's objects.
include src/Game/CMakeFiles/BECS.dir/flags.make

src/Game/CMakeFiles/BECS.dir/BComponents.cxx.o: src/Game/CMakeFiles/BECS.dir/flags.make
src/Game/CMakeFiles/BECS.dir/BComponents.cxx.o: /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BComponents.cxx
src/Game/CMakeFiles/BECS.dir/BComponents.cxx.o: src/Game/CMakeFiles/BECS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Game/CMakeFiles/BECS.dir/BComponents.cxx.o"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Game/CMakeFiles/BECS.dir/BComponents.cxx.o -MF CMakeFiles/BECS.dir/BComponents.cxx.o.d -o CMakeFiles/BECS.dir/BComponents.cxx.o -c /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BComponents.cxx

src/Game/CMakeFiles/BECS.dir/BComponents.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BECS.dir/BComponents.cxx.i"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BComponents.cxx > CMakeFiles/BECS.dir/BComponents.cxx.i

src/Game/CMakeFiles/BECS.dir/BComponents.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BECS.dir/BComponents.cxx.s"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BComponents.cxx -o CMakeFiles/BECS.dir/BComponents.cxx.s

src/Game/CMakeFiles/BECS.dir/BECS.cxx.o: src/Game/CMakeFiles/BECS.dir/flags.make
src/Game/CMakeFiles/BECS.dir/BECS.cxx.o: /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BECS.cxx
src/Game/CMakeFiles/BECS.dir/BECS.cxx.o: src/Game/CMakeFiles/BECS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/Game/CMakeFiles/BECS.dir/BECS.cxx.o"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Game/CMakeFiles/BECS.dir/BECS.cxx.o -MF CMakeFiles/BECS.dir/BECS.cxx.o.d -o CMakeFiles/BECS.dir/BECS.cxx.o -c /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BECS.cxx

src/Game/CMakeFiles/BECS.dir/BECS.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BECS.dir/BECS.cxx.i"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BECS.cxx > CMakeFiles/BECS.dir/BECS.cxx.i

src/Game/CMakeFiles/BECS.dir/BECS.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BECS.dir/BECS.cxx.s"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BECS.cxx -o CMakeFiles/BECS.dir/BECS.cxx.s

src/Game/CMakeFiles/BECS.dir/BTransformComponent.cxx.o: src/Game/CMakeFiles/BECS.dir/flags.make
src/Game/CMakeFiles/BECS.dir/BTransformComponent.cxx.o: /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BTransformComponent.cxx
src/Game/CMakeFiles/BECS.dir/BTransformComponent.cxx.o: src/Game/CMakeFiles/BECS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/Game/CMakeFiles/BECS.dir/BTransformComponent.cxx.o"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Game/CMakeFiles/BECS.dir/BTransformComponent.cxx.o -MF CMakeFiles/BECS.dir/BTransformComponent.cxx.o.d -o CMakeFiles/BECS.dir/BTransformComponent.cxx.o -c /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BTransformComponent.cxx

src/Game/CMakeFiles/BECS.dir/BTransformComponent.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BECS.dir/BTransformComponent.cxx.i"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BTransformComponent.cxx > CMakeFiles/BECS.dir/BTransformComponent.cxx.i

src/Game/CMakeFiles/BECS.dir/BTransformComponent.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BECS.dir/BTransformComponent.cxx.s"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BTransformComponent.cxx -o CMakeFiles/BECS.dir/BTransformComponent.cxx.s

src/Game/CMakeFiles/BECS.dir/BSpriteComponent.cxx.o: src/Game/CMakeFiles/BECS.dir/flags.make
src/Game/CMakeFiles/BECS.dir/BSpriteComponent.cxx.o: /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BSpriteComponent.cxx
src/Game/CMakeFiles/BECS.dir/BSpriteComponent.cxx.o: src/Game/CMakeFiles/BECS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/Game/CMakeFiles/BECS.dir/BSpriteComponent.cxx.o"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Game/CMakeFiles/BECS.dir/BSpriteComponent.cxx.o -MF CMakeFiles/BECS.dir/BSpriteComponent.cxx.o.d -o CMakeFiles/BECS.dir/BSpriteComponent.cxx.o -c /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BSpriteComponent.cxx

src/Game/CMakeFiles/BECS.dir/BSpriteComponent.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BECS.dir/BSpriteComponent.cxx.i"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BSpriteComponent.cxx > CMakeFiles/BECS.dir/BSpriteComponent.cxx.i

src/Game/CMakeFiles/BECS.dir/BSpriteComponent.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BECS.dir/BSpriteComponent.cxx.s"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BSpriteComponent.cxx -o CMakeFiles/BECS.dir/BSpriteComponent.cxx.s

src/Game/CMakeFiles/BECS.dir/BKeyBoardController.cxx.o: src/Game/CMakeFiles/BECS.dir/flags.make
src/Game/CMakeFiles/BECS.dir/BKeyBoardController.cxx.o: /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BKeyBoardController.cxx
src/Game/CMakeFiles/BECS.dir/BKeyBoardController.cxx.o: src/Game/CMakeFiles/BECS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/Game/CMakeFiles/BECS.dir/BKeyBoardController.cxx.o"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Game/CMakeFiles/BECS.dir/BKeyBoardController.cxx.o -MF CMakeFiles/BECS.dir/BKeyBoardController.cxx.o.d -o CMakeFiles/BECS.dir/BKeyBoardController.cxx.o -c /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BKeyBoardController.cxx

src/Game/CMakeFiles/BECS.dir/BKeyBoardController.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BECS.dir/BKeyBoardController.cxx.i"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BKeyBoardController.cxx > CMakeFiles/BECS.dir/BKeyBoardController.cxx.i

src/Game/CMakeFiles/BECS.dir/BKeyBoardController.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BECS.dir/BKeyBoardController.cxx.s"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BKeyBoardController.cxx -o CMakeFiles/BECS.dir/BKeyBoardController.cxx.s

src/Game/CMakeFiles/BECS.dir/BColliderComponent.cxx.o: src/Game/CMakeFiles/BECS.dir/flags.make
src/Game/CMakeFiles/BECS.dir/BColliderComponent.cxx.o: /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BColliderComponent.cxx
src/Game/CMakeFiles/BECS.dir/BColliderComponent.cxx.o: src/Game/CMakeFiles/BECS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/Game/CMakeFiles/BECS.dir/BColliderComponent.cxx.o"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Game/CMakeFiles/BECS.dir/BColliderComponent.cxx.o -MF CMakeFiles/BECS.dir/BColliderComponent.cxx.o.d -o CMakeFiles/BECS.dir/BColliderComponent.cxx.o -c /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BColliderComponent.cxx

src/Game/CMakeFiles/BECS.dir/BColliderComponent.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BECS.dir/BColliderComponent.cxx.i"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BColliderComponent.cxx > CMakeFiles/BECS.dir/BColliderComponent.cxx.i

src/Game/CMakeFiles/BECS.dir/BColliderComponent.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BECS.dir/BColliderComponent.cxx.s"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BColliderComponent.cxx -o CMakeFiles/BECS.dir/BColliderComponent.cxx.s

src/Game/CMakeFiles/BECS.dir/BTileComponent.cxx.o: src/Game/CMakeFiles/BECS.dir/flags.make
src/Game/CMakeFiles/BECS.dir/BTileComponent.cxx.o: /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BTileComponent.cxx
src/Game/CMakeFiles/BECS.dir/BTileComponent.cxx.o: src/Game/CMakeFiles/BECS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/Game/CMakeFiles/BECS.dir/BTileComponent.cxx.o"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Game/CMakeFiles/BECS.dir/BTileComponent.cxx.o -MF CMakeFiles/BECS.dir/BTileComponent.cxx.o.d -o CMakeFiles/BECS.dir/BTileComponent.cxx.o -c /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BTileComponent.cxx

src/Game/CMakeFiles/BECS.dir/BTileComponent.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BECS.dir/BTileComponent.cxx.i"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BTileComponent.cxx > CMakeFiles/BECS.dir/BTileComponent.cxx.i

src/Game/CMakeFiles/BECS.dir/BTileComponent.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BECS.dir/BTileComponent.cxx.s"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BTileComponent.cxx -o CMakeFiles/BECS.dir/BTileComponent.cxx.s

src/Game/CMakeFiles/BECS.dir/BAnimation.cxx.o: src/Game/CMakeFiles/BECS.dir/flags.make
src/Game/CMakeFiles/BECS.dir/BAnimation.cxx.o: /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BAnimation.cxx
src/Game/CMakeFiles/BECS.dir/BAnimation.cxx.o: src/Game/CMakeFiles/BECS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/Game/CMakeFiles/BECS.dir/BAnimation.cxx.o"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/Game/CMakeFiles/BECS.dir/BAnimation.cxx.o -MF CMakeFiles/BECS.dir/BAnimation.cxx.o.d -o CMakeFiles/BECS.dir/BAnimation.cxx.o -c /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BAnimation.cxx

src/Game/CMakeFiles/BECS.dir/BAnimation.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BECS.dir/BAnimation.cxx.i"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BAnimation.cxx > CMakeFiles/BECS.dir/BAnimation.cxx.i

src/Game/CMakeFiles/BECS.dir/BAnimation.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BECS.dir/BAnimation.cxx.s"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game/BAnimation.cxx -o CMakeFiles/BECS.dir/BAnimation.cxx.s

# Object files for target BECS
BECS_OBJECTS = \
"CMakeFiles/BECS.dir/BComponents.cxx.o" \
"CMakeFiles/BECS.dir/BECS.cxx.o" \
"CMakeFiles/BECS.dir/BTransformComponent.cxx.o" \
"CMakeFiles/BECS.dir/BSpriteComponent.cxx.o" \
"CMakeFiles/BECS.dir/BKeyBoardController.cxx.o" \
"CMakeFiles/BECS.dir/BColliderComponent.cxx.o" \
"CMakeFiles/BECS.dir/BTileComponent.cxx.o" \
"CMakeFiles/BECS.dir/BAnimation.cxx.o"

# External object files for target BECS
BECS_EXTERNAL_OBJECTS =

src/Game/libBECS.a: src/Game/CMakeFiles/BECS.dir/BComponents.cxx.o
src/Game/libBECS.a: src/Game/CMakeFiles/BECS.dir/BECS.cxx.o
src/Game/libBECS.a: src/Game/CMakeFiles/BECS.dir/BTransformComponent.cxx.o
src/Game/libBECS.a: src/Game/CMakeFiles/BECS.dir/BSpriteComponent.cxx.o
src/Game/libBECS.a: src/Game/CMakeFiles/BECS.dir/BKeyBoardController.cxx.o
src/Game/libBECS.a: src/Game/CMakeFiles/BECS.dir/BColliderComponent.cxx.o
src/Game/libBECS.a: src/Game/CMakeFiles/BECS.dir/BTileComponent.cxx.o
src/Game/libBECS.a: src/Game/CMakeFiles/BECS.dir/BAnimation.cxx.o
src/Game/libBECS.a: src/Game/CMakeFiles/BECS.dir/build.make
src/Game/libBECS.a: src/Game/CMakeFiles/BECS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library libBECS.a"
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && $(CMAKE_COMMAND) -P CMakeFiles/BECS.dir/cmake_clean_target.cmake
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BECS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Game/CMakeFiles/BECS.dir/build: src/Game/libBECS.a
.PHONY : src/Game/CMakeFiles/BECS.dir/build

src/Game/CMakeFiles/BECS.dir/clean:
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game && $(CMAKE_COMMAND) -P CMakeFiles/BECS.dir/cmake_clean.cmake
.PHONY : src/Game/CMakeFiles/BECS.dir/clean

src/Game/CMakeFiles/BECS.dir/depend:
	cd /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/src/Game /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game /Users/joachimcarlokristianhansen/JinxPebblesBeerVentures/Beerventures/build/src/Game/CMakeFiles/BECS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/Game/CMakeFiles/BECS.dir/depend

