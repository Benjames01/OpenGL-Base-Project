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
include dependencies/glfw/examples/CMakeFiles/sharing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dependencies/glfw/examples/CMakeFiles/sharing.dir/compiler_depend.make

# Include the progress variables for this target.
include dependencies/glfw/examples/CMakeFiles/sharing.dir/progress.make

# Include the compile flags for this target's objects.
include dependencies/glfw/examples/CMakeFiles/sharing.dir/flags.make

dependencies/glfw/examples/CMakeFiles/sharing.dir/sharing.c.obj: dependencies/glfw/examples/CMakeFiles/sharing.dir/flags.make
dependencies/glfw/examples/CMakeFiles/sharing.dir/sharing.c.obj: dependencies/glfw/examples/CMakeFiles/sharing.dir/includes_C.rsp
dependencies/glfw/examples/CMakeFiles/sharing.dir/sharing.c.obj: dependencies/glfw/examples/sharing.c
dependencies/glfw/examples/CMakeFiles/sharing.dir/sharing.c.obj: dependencies/glfw/examples/CMakeFiles/sharing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dependencies/glfw/examples/CMakeFiles/sharing.dir/sharing.c.obj"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\examples && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/glfw/examples/CMakeFiles/sharing.dir/sharing.c.obj -MF CMakeFiles\sharing.dir\sharing.c.obj.d -o CMakeFiles\sharing.dir\sharing.c.obj -c C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\examples\sharing.c

dependencies/glfw/examples/CMakeFiles/sharing.dir/sharing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sharing.dir/sharing.c.i"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\examples && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\examples\sharing.c > CMakeFiles\sharing.dir\sharing.c.i

dependencies/glfw/examples/CMakeFiles/sharing.dir/sharing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sharing.dir/sharing.c.s"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\examples && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\examples\sharing.c -o CMakeFiles\sharing.dir\sharing.c.s

dependencies/glfw/examples/CMakeFiles/sharing.dir/glfw.rc.obj: dependencies/glfw/examples/CMakeFiles/sharing.dir/flags.make
dependencies/glfw/examples/CMakeFiles/sharing.dir/glfw.rc.obj: dependencies/glfw/examples/glfw.rc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building RC object dependencies/glfw/examples/CMakeFiles/sharing.dir/glfw.rc.obj"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\examples && C:\msys64\mingw64\bin\windres.exe -O coff $(RC_DEFINES) $(RC_INCLUDES) $(RC_FLAGS) C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\examples\glfw.rc CMakeFiles\sharing.dir\glfw.rc.obj

dependencies/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.obj: dependencies/glfw/examples/CMakeFiles/sharing.dir/flags.make
dependencies/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.obj: dependencies/glfw/examples/CMakeFiles/sharing.dir/includes_C.rsp
dependencies/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.obj: dependencies/glfw/deps/glad_gl.c
dependencies/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.obj: dependencies/glfw/examples/CMakeFiles/sharing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object dependencies/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.obj"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\examples && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.obj -MF CMakeFiles\sharing.dir\__\deps\glad_gl.c.obj.d -o CMakeFiles\sharing.dir\__\deps\glad_gl.c.obj -c C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\glad_gl.c

dependencies/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sharing.dir/__/deps/glad_gl.c.i"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\examples && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\glad_gl.c > CMakeFiles\sharing.dir\__\deps\glad_gl.c.i

dependencies/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sharing.dir/__/deps/glad_gl.c.s"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\examples && C:\msys64\mingw64\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\deps\glad_gl.c -o CMakeFiles\sharing.dir\__\deps\glad_gl.c.s

# Object files for target sharing
sharing_OBJECTS = \
"CMakeFiles/sharing.dir/sharing.c.obj" \
"CMakeFiles/sharing.dir/glfw.rc.obj" \
"CMakeFiles/sharing.dir/__/deps/glad_gl.c.obj"

# External object files for target sharing
sharing_EXTERNAL_OBJECTS =

dependencies/glfw/examples/sharing.exe: dependencies/glfw/examples/CMakeFiles/sharing.dir/sharing.c.obj
dependencies/glfw/examples/sharing.exe: dependencies/glfw/examples/CMakeFiles/sharing.dir/glfw.rc.obj
dependencies/glfw/examples/sharing.exe: dependencies/glfw/examples/CMakeFiles/sharing.dir/__/deps/glad_gl.c.obj
dependencies/glfw/examples/sharing.exe: dependencies/glfw/examples/CMakeFiles/sharing.dir/build.make
dependencies/glfw/examples/sharing.exe: dependencies/glfw/src/libglfw3.a
dependencies/glfw/examples/sharing.exe: dependencies/glfw/examples/CMakeFiles/sharing.dir/linkLibs.rsp
dependencies/glfw/examples/sharing.exe: dependencies/glfw/examples/CMakeFiles/sharing.dir/objects1
dependencies/glfw/examples/sharing.exe: dependencies/glfw/examples/CMakeFiles/sharing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable sharing.exe"
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\sharing.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dependencies/glfw/examples/CMakeFiles/sharing.dir/build: dependencies/glfw/examples/sharing.exe
.PHONY : dependencies/glfw/examples/CMakeFiles/sharing.dir/build

dependencies/glfw/examples/CMakeFiles/sharing.dir/clean:
	cd /d C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\examples && $(CMAKE_COMMAND) -P CMakeFiles\sharing.dir\cmake_clean.cmake
.PHONY : dependencies/glfw/examples/CMakeFiles/sharing.dir/clean

dependencies/glfw/examples/CMakeFiles/sharing.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\examples C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\examples C:\Users\Ben\Documents\_dev\OpenGL\BensOpenGLBase\dependencies\glfw\examples\CMakeFiles\sharing.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : dependencies/glfw/examples/CMakeFiles/sharing.dir/depend

