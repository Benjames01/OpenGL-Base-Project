# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase

# Include any dependencies generated for this target.
include dependencies/glfw/tests/CMakeFiles/windows.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dependencies/glfw/tests/CMakeFiles/windows.dir/compiler_depend.make

# Include the progress variables for this target.
include dependencies/glfw/tests/CMakeFiles/windows.dir/progress.make

# Include the compile flags for this target's objects.
include dependencies/glfw/tests/CMakeFiles/windows.dir/flags.make

dependencies/glfw/tests/CMakeFiles/windows.dir/windows.c.obj: dependencies/glfw/tests/CMakeFiles/windows.dir/flags.make
dependencies/glfw/tests/CMakeFiles/windows.dir/windows.c.obj: dependencies/glfw/tests/CMakeFiles/windows.dir/includes_C.rsp
dependencies/glfw/tests/CMakeFiles/windows.dir/windows.c.obj: dependencies/glfw/tests/windows.c
dependencies/glfw/tests/CMakeFiles/windows.dir/windows.c.obj: dependencies/glfw/tests/CMakeFiles/windows.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dependencies/glfw/tests/CMakeFiles/windows.dir/windows.c.obj"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/glfw/tests/CMakeFiles/windows.dir/windows.c.obj -MF CMakeFiles\windows.dir\windows.c.obj.d -o CMakeFiles\windows.dir\windows.c.obj -c C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests\windows.c

dependencies/glfw/tests/CMakeFiles/windows.dir/windows.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/windows.dir/windows.c.i"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests\windows.c > CMakeFiles\windows.dir\windows.c.i

dependencies/glfw/tests/CMakeFiles/windows.dir/windows.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/windows.dir/windows.c.s"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests\windows.c -o CMakeFiles\windows.dir\windows.c.s

dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.obj: dependencies/glfw/tests/CMakeFiles/windows.dir/flags.make
dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.obj: dependencies/glfw/tests/CMakeFiles/windows.dir/includes_C.rsp
dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.obj: dependencies/glfw/deps/getopt.c
dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.obj: dependencies/glfw/tests/CMakeFiles/windows.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.obj"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.obj -MF CMakeFiles\windows.dir\__\deps\getopt.c.obj.d -o CMakeFiles\windows.dir\__\deps\getopt.c.obj -c C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\getopt.c

dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/windows.dir/__/deps/getopt.c.i"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\getopt.c > CMakeFiles\windows.dir\__\deps\getopt.c.i

dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/windows.dir/__/deps/getopt.c.s"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\getopt.c -o CMakeFiles\windows.dir\__\deps\getopt.c.s

dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.obj: dependencies/glfw/tests/CMakeFiles/windows.dir/flags.make
dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.obj: dependencies/glfw/tests/CMakeFiles/windows.dir/includes_C.rsp
dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.obj: dependencies/glfw/deps/glad_gl.c
dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.obj: dependencies/glfw/tests/CMakeFiles/windows.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.obj"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.obj -MF CMakeFiles\windows.dir\__\deps\glad_gl.c.obj.d -o CMakeFiles\windows.dir\__\deps\glad_gl.c.obj -c C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\glad_gl.c

dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/windows.dir/__/deps/glad_gl.c.i"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\glad_gl.c > CMakeFiles\windows.dir\__\deps\glad_gl.c.i

dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/windows.dir/__/deps/glad_gl.c.s"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\glad_gl.c -o CMakeFiles\windows.dir\__\deps\glad_gl.c.s

# Object files for target windows
windows_OBJECTS = \
"CMakeFiles/windows.dir/windows.c.obj" \
"CMakeFiles/windows.dir/__/deps/getopt.c.obj" \
"CMakeFiles/windows.dir/__/deps/glad_gl.c.obj"

# External object files for target windows
windows_EXTERNAL_OBJECTS =

dependencies/glfw/tests/windows.exe: dependencies/glfw/tests/CMakeFiles/windows.dir/windows.c.obj
dependencies/glfw/tests/windows.exe: dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/getopt.c.obj
dependencies/glfw/tests/windows.exe: dependencies/glfw/tests/CMakeFiles/windows.dir/__/deps/glad_gl.c.obj
dependencies/glfw/tests/windows.exe: dependencies/glfw/tests/CMakeFiles/windows.dir/build.make
dependencies/glfw/tests/windows.exe: dependencies/glfw/src/libglfw3.a
dependencies/glfw/tests/windows.exe: dependencies/glfw/tests/CMakeFiles/windows.dir/linkLibs.rsp
dependencies/glfw/tests/windows.exe: dependencies/glfw/tests/CMakeFiles/windows.dir/objects1
dependencies/glfw/tests/windows.exe: dependencies/glfw/tests/CMakeFiles/windows.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable windows.exe"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\windows.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dependencies/glfw/tests/CMakeFiles/windows.dir/build: dependencies/glfw/tests/windows.exe
.PHONY : dependencies/glfw/tests/CMakeFiles/windows.dir/build

dependencies/glfw/tests/CMakeFiles/windows.dir/clean:
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && $(CMAKE_COMMAND) -P CMakeFiles\windows.dir\cmake_clean.cmake
.PHONY : dependencies/glfw/tests/CMakeFiles/windows.dir/clean

dependencies/glfw/tests/CMakeFiles/windows.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests\CMakeFiles\windows.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : dependencies/glfw/tests/CMakeFiles/windows.dir/depend
