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
include dependencies/glfw/tests/CMakeFiles/empty.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dependencies/glfw/tests/CMakeFiles/empty.dir/compiler_depend.make

# Include the progress variables for this target.
include dependencies/glfw/tests/CMakeFiles/empty.dir/progress.make

# Include the compile flags for this target's objects.
include dependencies/glfw/tests/CMakeFiles/empty.dir/flags.make

dependencies/glfw/tests/CMakeFiles/empty.dir/empty.c.obj: dependencies/glfw/tests/CMakeFiles/empty.dir/flags.make
dependencies/glfw/tests/CMakeFiles/empty.dir/empty.c.obj: dependencies/glfw/tests/CMakeFiles/empty.dir/includes_C.rsp
dependencies/glfw/tests/CMakeFiles/empty.dir/empty.c.obj: dependencies/glfw/tests/empty.c
dependencies/glfw/tests/CMakeFiles/empty.dir/empty.c.obj: dependencies/glfw/tests/CMakeFiles/empty.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dependencies/glfw/tests/CMakeFiles/empty.dir/empty.c.obj"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/glfw/tests/CMakeFiles/empty.dir/empty.c.obj -MF CMakeFiles\empty.dir\empty.c.obj.d -o CMakeFiles\empty.dir\empty.c.obj -c C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests\empty.c

dependencies/glfw/tests/CMakeFiles/empty.dir/empty.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/empty.dir/empty.c.i"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests\empty.c > CMakeFiles\empty.dir\empty.c.i

dependencies/glfw/tests/CMakeFiles/empty.dir/empty.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/empty.dir/empty.c.s"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests\empty.c -o CMakeFiles\empty.dir\empty.c.s

dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.obj: dependencies/glfw/tests/CMakeFiles/empty.dir/flags.make
dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.obj: dependencies/glfw/tests/CMakeFiles/empty.dir/includes_C.rsp
dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.obj: dependencies/glfw/deps/tinycthread.c
dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.obj: dependencies/glfw/tests/CMakeFiles/empty.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.obj"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.obj -MF CMakeFiles\empty.dir\__\deps\tinycthread.c.obj.d -o CMakeFiles\empty.dir\__\deps\tinycthread.c.obj -c C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\tinycthread.c

dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/empty.dir/__/deps/tinycthread.c.i"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\tinycthread.c > CMakeFiles\empty.dir\__\deps\tinycthread.c.i

dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/empty.dir/__/deps/tinycthread.c.s"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\tinycthread.c -o CMakeFiles\empty.dir\__\deps\tinycthread.c.s

dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/glad_gl.c.obj: dependencies/glfw/tests/CMakeFiles/empty.dir/flags.make
dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/glad_gl.c.obj: dependencies/glfw/tests/CMakeFiles/empty.dir/includes_C.rsp
dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/glad_gl.c.obj: dependencies/glfw/deps/glad_gl.c
dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/glad_gl.c.obj: dependencies/glfw/tests/CMakeFiles/empty.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/glad_gl.c.obj"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/glad_gl.c.obj -MF CMakeFiles\empty.dir\__\deps\glad_gl.c.obj.d -o CMakeFiles\empty.dir\__\deps\glad_gl.c.obj -c C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\glad_gl.c

dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/empty.dir/__/deps/glad_gl.c.i"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\glad_gl.c > CMakeFiles\empty.dir\__\deps\glad_gl.c.i

dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/empty.dir/__/deps/glad_gl.c.s"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\glad_gl.c -o CMakeFiles\empty.dir\__\deps\glad_gl.c.s

# Object files for target empty
empty_OBJECTS = \
"CMakeFiles/empty.dir/empty.c.obj" \
"CMakeFiles/empty.dir/__/deps/tinycthread.c.obj" \
"CMakeFiles/empty.dir/__/deps/glad_gl.c.obj"

# External object files for target empty
empty_EXTERNAL_OBJECTS =

dependencies/glfw/tests/empty.exe: dependencies/glfw/tests/CMakeFiles/empty.dir/empty.c.obj
dependencies/glfw/tests/empty.exe: dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.obj
dependencies/glfw/tests/empty.exe: dependencies/glfw/tests/CMakeFiles/empty.dir/__/deps/glad_gl.c.obj
dependencies/glfw/tests/empty.exe: dependencies/glfw/tests/CMakeFiles/empty.dir/build.make
dependencies/glfw/tests/empty.exe: dependencies/glfw/src/libglfw3.a
dependencies/glfw/tests/empty.exe: dependencies/glfw/tests/CMakeFiles/empty.dir/linkLibs.rsp
dependencies/glfw/tests/empty.exe: dependencies/glfw/tests/CMakeFiles/empty.dir/objects1
dependencies/glfw/tests/empty.exe: dependencies/glfw/tests/CMakeFiles/empty.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable empty.exe"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\empty.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dependencies/glfw/tests/CMakeFiles/empty.dir/build: dependencies/glfw/tests/empty.exe
.PHONY : dependencies/glfw/tests/CMakeFiles/empty.dir/build

dependencies/glfw/tests/CMakeFiles/empty.dir/clean:
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests && $(CMAKE_COMMAND) -P CMakeFiles\empty.dir\cmake_clean.cmake
.PHONY : dependencies/glfw/tests/CMakeFiles/empty.dir/clean

dependencies/glfw/tests/CMakeFiles/empty.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\tests\CMakeFiles\empty.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : dependencies/glfw/tests/CMakeFiles/empty.dir/depend

