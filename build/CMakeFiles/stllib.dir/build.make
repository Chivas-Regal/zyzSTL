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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.25.0/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.25.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/snopzyz/Documents/GitHub/zyzSTL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/snopzyz/Documents/GitHub/zyzSTL/build

# Include any dependencies generated for this target.
include CMakeFiles/stllib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/stllib.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/stllib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/stllib.dir/flags.make

CMakeFiles/stllib.dir/example/main.cpp.o: CMakeFiles/stllib.dir/flags.make
CMakeFiles/stllib.dir/example/main.cpp.o: /Users/snopzyz/Documents/GitHub/zyzSTL/example/main.cpp
CMakeFiles/stllib.dir/example/main.cpp.o: CMakeFiles/stllib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/snopzyz/Documents/GitHub/zyzSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/stllib.dir/example/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/stllib.dir/example/main.cpp.o -MF CMakeFiles/stllib.dir/example/main.cpp.o.d -o CMakeFiles/stllib.dir/example/main.cpp.o -c /Users/snopzyz/Documents/GitHub/zyzSTL/example/main.cpp

CMakeFiles/stllib.dir/example/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stllib.dir/example/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/snopzyz/Documents/GitHub/zyzSTL/example/main.cpp > CMakeFiles/stllib.dir/example/main.cpp.i

CMakeFiles/stllib.dir/example/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stllib.dir/example/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/snopzyz/Documents/GitHub/zyzSTL/example/main.cpp -o CMakeFiles/stllib.dir/example/main.cpp.s

# Object files for target stllib
stllib_OBJECTS = \
"CMakeFiles/stllib.dir/example/main.cpp.o"

# External object files for target stllib
stllib_EXTERNAL_OBJECTS =

stllib: CMakeFiles/stllib.dir/example/main.cpp.o
stllib: CMakeFiles/stllib.dir/build.make
stllib: /Users/snopzyz/Documents/GitHub/zyzSTL/lib/libzyzstl.dylib
stllib: CMakeFiles/stllib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/snopzyz/Documents/GitHub/zyzSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable stllib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stllib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/stllib.dir/build: stllib
.PHONY : CMakeFiles/stllib.dir/build

CMakeFiles/stllib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/stllib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/stllib.dir/clean

CMakeFiles/stllib.dir/depend:
	cd /Users/snopzyz/Documents/GitHub/zyzSTL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/snopzyz/Documents/GitHub/zyzSTL /Users/snopzyz/Documents/GitHub/zyzSTL /Users/snopzyz/Documents/GitHub/zyzSTL/build /Users/snopzyz/Documents/GitHub/zyzSTL/build /Users/snopzyz/Documents/GitHub/zyzSTL/build/CMakeFiles/stllib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/stllib.dir/depend

