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
include CMakeFiles/mem_manage.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/mem_manage.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/mem_manage.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mem_manage.dir/flags.make

CMakeFiles/mem_manage.dir/main.cpp.o: CMakeFiles/mem_manage.dir/flags.make
CMakeFiles/mem_manage.dir/main.cpp.o: /Users/snopzyz/Documents/GitHub/zyzSTL/main.cpp
CMakeFiles/mem_manage.dir/main.cpp.o: CMakeFiles/mem_manage.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/snopzyz/Documents/GitHub/zyzSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mem_manage.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mem_manage.dir/main.cpp.o -MF CMakeFiles/mem_manage.dir/main.cpp.o.d -o CMakeFiles/mem_manage.dir/main.cpp.o -c /Users/snopzyz/Documents/GitHub/zyzSTL/main.cpp

CMakeFiles/mem_manage.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mem_manage.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/snopzyz/Documents/GitHub/zyzSTL/main.cpp > CMakeFiles/mem_manage.dir/main.cpp.i

CMakeFiles/mem_manage.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mem_manage.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/snopzyz/Documents/GitHub/zyzSTL/main.cpp -o CMakeFiles/mem_manage.dir/main.cpp.s

CMakeFiles/mem_manage.dir/src/allocator.cpp.o: CMakeFiles/mem_manage.dir/flags.make
CMakeFiles/mem_manage.dir/src/allocator.cpp.o: /Users/snopzyz/Documents/GitHub/zyzSTL/src/allocator.cpp
CMakeFiles/mem_manage.dir/src/allocator.cpp.o: CMakeFiles/mem_manage.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/snopzyz/Documents/GitHub/zyzSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/mem_manage.dir/src/allocator.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mem_manage.dir/src/allocator.cpp.o -MF CMakeFiles/mem_manage.dir/src/allocator.cpp.o.d -o CMakeFiles/mem_manage.dir/src/allocator.cpp.o -c /Users/snopzyz/Documents/GitHub/zyzSTL/src/allocator.cpp

CMakeFiles/mem_manage.dir/src/allocator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mem_manage.dir/src/allocator.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/snopzyz/Documents/GitHub/zyzSTL/src/allocator.cpp > CMakeFiles/mem_manage.dir/src/allocator.cpp.i

CMakeFiles/mem_manage.dir/src/allocator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mem_manage.dir/src/allocator.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/snopzyz/Documents/GitHub/zyzSTL/src/allocator.cpp -o CMakeFiles/mem_manage.dir/src/allocator.cpp.s

CMakeFiles/mem_manage.dir/src/memlist.cpp.o: CMakeFiles/mem_manage.dir/flags.make
CMakeFiles/mem_manage.dir/src/memlist.cpp.o: /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlist.cpp
CMakeFiles/mem_manage.dir/src/memlist.cpp.o: CMakeFiles/mem_manage.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/snopzyz/Documents/GitHub/zyzSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/mem_manage.dir/src/memlist.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mem_manage.dir/src/memlist.cpp.o -MF CMakeFiles/mem_manage.dir/src/memlist.cpp.o.d -o CMakeFiles/mem_manage.dir/src/memlist.cpp.o -c /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlist.cpp

CMakeFiles/mem_manage.dir/src/memlist.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mem_manage.dir/src/memlist.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlist.cpp > CMakeFiles/mem_manage.dir/src/memlist.cpp.i

CMakeFiles/mem_manage.dir/src/memlist.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mem_manage.dir/src/memlist.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlist.cpp -o CMakeFiles/mem_manage.dir/src/memlist.cpp.s

CMakeFiles/mem_manage.dir/src/memlist_bf.cpp.o: CMakeFiles/mem_manage.dir/flags.make
CMakeFiles/mem_manage.dir/src/memlist_bf.cpp.o: /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlist_bf.cpp
CMakeFiles/mem_manage.dir/src/memlist_bf.cpp.o: CMakeFiles/mem_manage.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/snopzyz/Documents/GitHub/zyzSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/mem_manage.dir/src/memlist_bf.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mem_manage.dir/src/memlist_bf.cpp.o -MF CMakeFiles/mem_manage.dir/src/memlist_bf.cpp.o.d -o CMakeFiles/mem_manage.dir/src/memlist_bf.cpp.o -c /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlist_bf.cpp

CMakeFiles/mem_manage.dir/src/memlist_bf.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mem_manage.dir/src/memlist_bf.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlist_bf.cpp > CMakeFiles/mem_manage.dir/src/memlist_bf.cpp.i

CMakeFiles/mem_manage.dir/src/memlist_bf.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mem_manage.dir/src/memlist_bf.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlist_bf.cpp -o CMakeFiles/mem_manage.dir/src/memlist_bf.cpp.s

CMakeFiles/mem_manage.dir/src/memlist_ff.cpp.o: CMakeFiles/mem_manage.dir/flags.make
CMakeFiles/mem_manage.dir/src/memlist_ff.cpp.o: /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlist_ff.cpp
CMakeFiles/mem_manage.dir/src/memlist_ff.cpp.o: CMakeFiles/mem_manage.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/snopzyz/Documents/GitHub/zyzSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/mem_manage.dir/src/memlist_ff.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mem_manage.dir/src/memlist_ff.cpp.o -MF CMakeFiles/mem_manage.dir/src/memlist_ff.cpp.o.d -o CMakeFiles/mem_manage.dir/src/memlist_ff.cpp.o -c /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlist_ff.cpp

CMakeFiles/mem_manage.dir/src/memlist_ff.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mem_manage.dir/src/memlist_ff.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlist_ff.cpp > CMakeFiles/mem_manage.dir/src/memlist_ff.cpp.i

CMakeFiles/mem_manage.dir/src/memlist_ff.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mem_manage.dir/src/memlist_ff.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlist_ff.cpp -o CMakeFiles/mem_manage.dir/src/memlist_ff.cpp.s

CMakeFiles/mem_manage.dir/src/memlist_wf.cpp.o: CMakeFiles/mem_manage.dir/flags.make
CMakeFiles/mem_manage.dir/src/memlist_wf.cpp.o: /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlist_wf.cpp
CMakeFiles/mem_manage.dir/src/memlist_wf.cpp.o: CMakeFiles/mem_manage.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/snopzyz/Documents/GitHub/zyzSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/mem_manage.dir/src/memlist_wf.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mem_manage.dir/src/memlist_wf.cpp.o -MF CMakeFiles/mem_manage.dir/src/memlist_wf.cpp.o.d -o CMakeFiles/mem_manage.dir/src/memlist_wf.cpp.o -c /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlist_wf.cpp

CMakeFiles/mem_manage.dir/src/memlist_wf.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mem_manage.dir/src/memlist_wf.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlist_wf.cpp > CMakeFiles/mem_manage.dir/src/memlist_wf.cpp.i

CMakeFiles/mem_manage.dir/src/memlist_wf.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mem_manage.dir/src/memlist_wf.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlist_wf.cpp -o CMakeFiles/mem_manage.dir/src/memlist_wf.cpp.s

CMakeFiles/mem_manage.dir/src/memlistnode.cpp.o: CMakeFiles/mem_manage.dir/flags.make
CMakeFiles/mem_manage.dir/src/memlistnode.cpp.o: /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlistnode.cpp
CMakeFiles/mem_manage.dir/src/memlistnode.cpp.o: CMakeFiles/mem_manage.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/snopzyz/Documents/GitHub/zyzSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/mem_manage.dir/src/memlistnode.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mem_manage.dir/src/memlistnode.cpp.o -MF CMakeFiles/mem_manage.dir/src/memlistnode.cpp.o.d -o CMakeFiles/mem_manage.dir/src/memlistnode.cpp.o -c /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlistnode.cpp

CMakeFiles/mem_manage.dir/src/memlistnode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mem_manage.dir/src/memlistnode.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlistnode.cpp > CMakeFiles/mem_manage.dir/src/memlistnode.cpp.i

CMakeFiles/mem_manage.dir/src/memlistnode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mem_manage.dir/src/memlistnode.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/snopzyz/Documents/GitHub/zyzSTL/src/memlistnode.cpp -o CMakeFiles/mem_manage.dir/src/memlistnode.cpp.s

CMakeFiles/mem_manage.dir/src/mempool.cpp.o: CMakeFiles/mem_manage.dir/flags.make
CMakeFiles/mem_manage.dir/src/mempool.cpp.o: /Users/snopzyz/Documents/GitHub/zyzSTL/src/mempool.cpp
CMakeFiles/mem_manage.dir/src/mempool.cpp.o: CMakeFiles/mem_manage.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/snopzyz/Documents/GitHub/zyzSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/mem_manage.dir/src/mempool.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mem_manage.dir/src/mempool.cpp.o -MF CMakeFiles/mem_manage.dir/src/mempool.cpp.o.d -o CMakeFiles/mem_manage.dir/src/mempool.cpp.o -c /Users/snopzyz/Documents/GitHub/zyzSTL/src/mempool.cpp

CMakeFiles/mem_manage.dir/src/mempool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mem_manage.dir/src/mempool.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/snopzyz/Documents/GitHub/zyzSTL/src/mempool.cpp > CMakeFiles/mem_manage.dir/src/mempool.cpp.i

CMakeFiles/mem_manage.dir/src/mempool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mem_manage.dir/src/mempool.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/snopzyz/Documents/GitHub/zyzSTL/src/mempool.cpp -o CMakeFiles/mem_manage.dir/src/mempool.cpp.s

CMakeFiles/mem_manage.dir/src/vector.cpp.o: CMakeFiles/mem_manage.dir/flags.make
CMakeFiles/mem_manage.dir/src/vector.cpp.o: /Users/snopzyz/Documents/GitHub/zyzSTL/src/vector.cpp
CMakeFiles/mem_manage.dir/src/vector.cpp.o: CMakeFiles/mem_manage.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/snopzyz/Documents/GitHub/zyzSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/mem_manage.dir/src/vector.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mem_manage.dir/src/vector.cpp.o -MF CMakeFiles/mem_manage.dir/src/vector.cpp.o.d -o CMakeFiles/mem_manage.dir/src/vector.cpp.o -c /Users/snopzyz/Documents/GitHub/zyzSTL/src/vector.cpp

CMakeFiles/mem_manage.dir/src/vector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mem_manage.dir/src/vector.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/snopzyz/Documents/GitHub/zyzSTL/src/vector.cpp > CMakeFiles/mem_manage.dir/src/vector.cpp.i

CMakeFiles/mem_manage.dir/src/vector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mem_manage.dir/src/vector.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/snopzyz/Documents/GitHub/zyzSTL/src/vector.cpp -o CMakeFiles/mem_manage.dir/src/vector.cpp.s

# Object files for target mem_manage
mem_manage_OBJECTS = \
"CMakeFiles/mem_manage.dir/main.cpp.o" \
"CMakeFiles/mem_manage.dir/src/allocator.cpp.o" \
"CMakeFiles/mem_manage.dir/src/memlist.cpp.o" \
"CMakeFiles/mem_manage.dir/src/memlist_bf.cpp.o" \
"CMakeFiles/mem_manage.dir/src/memlist_ff.cpp.o" \
"CMakeFiles/mem_manage.dir/src/memlist_wf.cpp.o" \
"CMakeFiles/mem_manage.dir/src/memlistnode.cpp.o" \
"CMakeFiles/mem_manage.dir/src/mempool.cpp.o" \
"CMakeFiles/mem_manage.dir/src/vector.cpp.o"

# External object files for target mem_manage
mem_manage_EXTERNAL_OBJECTS =

mem_manage: CMakeFiles/mem_manage.dir/main.cpp.o
mem_manage: CMakeFiles/mem_manage.dir/src/allocator.cpp.o
mem_manage: CMakeFiles/mem_manage.dir/src/memlist.cpp.o
mem_manage: CMakeFiles/mem_manage.dir/src/memlist_bf.cpp.o
mem_manage: CMakeFiles/mem_manage.dir/src/memlist_ff.cpp.o
mem_manage: CMakeFiles/mem_manage.dir/src/memlist_wf.cpp.o
mem_manage: CMakeFiles/mem_manage.dir/src/memlistnode.cpp.o
mem_manage: CMakeFiles/mem_manage.dir/src/mempool.cpp.o
mem_manage: CMakeFiles/mem_manage.dir/src/vector.cpp.o
mem_manage: CMakeFiles/mem_manage.dir/build.make
mem_manage: CMakeFiles/mem_manage.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/snopzyz/Documents/GitHub/zyzSTL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable mem_manage"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mem_manage.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mem_manage.dir/build: mem_manage
.PHONY : CMakeFiles/mem_manage.dir/build

CMakeFiles/mem_manage.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mem_manage.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mem_manage.dir/clean

CMakeFiles/mem_manage.dir/depend:
	cd /Users/snopzyz/Documents/GitHub/zyzSTL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/snopzyz/Documents/GitHub/zyzSTL /Users/snopzyz/Documents/GitHub/zyzSTL /Users/snopzyz/Documents/GitHub/zyzSTL/build /Users/snopzyz/Documents/GitHub/zyzSTL/build /Users/snopzyz/Documents/GitHub/zyzSTL/build/CMakeFiles/mem_manage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mem_manage.dir/depend
