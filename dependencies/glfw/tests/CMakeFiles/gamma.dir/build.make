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
include dependencies/glfw/tests/CMakeFiles/gamma.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dependencies/glfw/tests/CMakeFiles/gamma.dir/compiler_depend.make

# Include the progress variables for this target.
include dependencies/glfw/tests/CMakeFiles/gamma.dir/progress.make

# Include the compile flags for this target's objects.
include dependencies/glfw/tests/CMakeFiles/gamma.dir/flags.make

dependencies/glfw/tests/CMakeFiles/gamma.dir/gamma.c.obj: dependencies/glfw/tests/CMakeFiles/gamma.dir/flags.make
dependencies/glfw/tests/CMakeFiles/gamma.dir/gamma.c.obj: dependencies/glfw/tests/CMakeFiles/gamma.dir/includes_C.rsp
dependencies/glfw/tests/CMakeFiles/gamma.dir/gamma.c.obj: dependencies/glfw/tests/gamma.c
dependencies/glfw/tests/CMakeFiles/gamma.dir/gamma.c.obj: dependencies/glfw/tests/CMakeFiles/gamma.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dependencies/glfw/tests/CMakeFiles/gamma.dir/gamma.c.obj"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/glfw/tests/CMakeFiles/gamma.dir/gamma.c.obj -MF CMakeFiles\gamma.dir\gamma.c.obj.d -o CMakeFiles\gamma.dir\gamma.c.obj -c C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests\gamma.c

dependencies/glfw/tests/CMakeFiles/gamma.dir/gamma.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gamma.dir/gamma.c.i"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests\gamma.c > CMakeFiles\gamma.dir\gamma.c.i

dependencies/glfw/tests/CMakeFiles/gamma.dir/gamma.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gamma.dir/gamma.c.s"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests\gamma.c -o CMakeFiles\gamma.dir\gamma.c.s

dependencies/glfw/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.obj: dependencies/glfw/tests/CMakeFiles/gamma.dir/flags.make
dependencies/glfw/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.obj: dependencies/glfw/tests/CMakeFiles/gamma.dir/includes_C.rsp
dependencies/glfw/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.obj: dependencies/glfw/deps/glad_gl.c
dependencies/glfw/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.obj: dependencies/glfw/tests/CMakeFiles/gamma.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object dependencies/glfw/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.obj"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/glfw/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.obj -MF CMakeFiles\gamma.dir\__\deps\glad_gl.c.obj.d -o CMakeFiles\gamma.dir\__\deps\glad_gl.c.obj -c C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\glad_gl.c

dependencies/glfw/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gamma.dir/__/deps/glad_gl.c.i"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\glad_gl.c > CMakeFiles\gamma.dir\__\deps\glad_gl.c.i

dependencies/glfw/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gamma.dir/__/deps/glad_gl.c.s"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\glad_gl.c -o CMakeFiles\gamma.dir\__\deps\glad_gl.c.s

# Object files for target gamma
gamma_OBJECTS = \
"CMakeFiles/gamma.dir/gamma.c.obj" \
"CMakeFiles/gamma.dir/__/deps/glad_gl.c.obj"

# External object files for target gamma
gamma_EXTERNAL_OBJECTS =

dependencies/glfw/tests/gamma.exe: dependencies/glfw/tests/CMakeFiles/gamma.dir/gamma.c.obj
dependencies/glfw/tests/gamma.exe: dependencies/glfw/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.obj
dependencies/glfw/tests/gamma.exe: dependencies/glfw/tests/CMakeFiles/gamma.dir/build.make
dependencies/glfw/tests/gamma.exe: dependencies/glfw/src/libglfw3.a
dependencies/glfw/tests/gamma.exe: dependencies/glfw/tests/CMakeFiles/gamma.dir/linkLibs.rsp
dependencies/glfw/tests/gamma.exe: dependencies/glfw/tests/CMakeFiles/gamma.dir/objects1
dependencies/glfw/tests/gamma.exe: dependencies/glfw/tests/CMakeFiles/gamma.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable gamma.exe"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\gamma.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dependencies/glfw/tests/CMakeFiles/gamma.dir/build: dependencies/glfw/tests/gamma.exe
.PHONY : dependencies/glfw/tests/CMakeFiles/gamma.dir/build

dependencies/glfw/tests/CMakeFiles/gamma.dir/clean:
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && $(CMAKE_COMMAND) -P CMakeFiles\gamma.dir\cmake_clean.cmake
.PHONY : dependencies/glfw/tests/CMakeFiles/gamma.dir/clean

dependencies/glfw/tests/CMakeFiles/gamma.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests\CMakeFiles\gamma.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : dependencies/glfw/tests/CMakeFiles/gamma.dir/depend
