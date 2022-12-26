#include "glad/glad.h"
#include "GLFW/glfw3.h"

#include <iostream>

int main()
{
	if (glfwInit() == 0) {
		std::cerr << "Was unable to initialize GLFW." << std::endl;
		return 1;
	}

	auto* _mainWindow = glfwCreateWindow(1280, 720, "Ben's Base Project", nullptr, nullptr);

	if (_mainWindow == nullptr) {
		std::cerr << "Failed to create a window." << std::endl;
		CleanUpWindow(_mainWindow);
		return 2;
	}

	glfwMakeContextCurrent(_mainWindow);

	if (gladLoadGL() == 0) {
		std::cerr << "Failed to initialize GLAD." << std::endl;
		CleanUpWindow(_mainWindow);
		return 3;
	}

	glClearColor(.2F, .2F, .2F, 1.0F);

	RunWindow(_mainWindow);

	CleanUpWindow(_mainWindow);
}

void RunWindow(GLFWwindow* window){
	while (!glfwWindowShouldClose(window)) {
		glClear(GL_COLOR_BUFFER_BIT);

		glfwPollEvents();
		glfwSwapBuffers(window);
	}
}

void CleanUpWindow(GLFWwindow* window){
	if(window != nullptr){
		glfwDestroyWindow(window);
	}
	glfwTerminate();
}
