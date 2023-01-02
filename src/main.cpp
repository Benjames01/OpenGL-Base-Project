#include "glad/glad.h"
#include "GLFW/glfw3.h"
#include "glm/glm.hpp"

#include <iostream>
#include <ShaderLoader.h>

using namespace glm;

static const GLfloat g_vertex_buffer_data[] = {
	-1.0f, -1.0f, 0.0f,
	1.0f, -1.0f, 0.0f,
	0.0f, 1.0f, 0.0f,
};

GLuint vertexArrayId;
GLuint vertexBuffer;
unsigned int exampleShaderId;

void InitTriangle()
{
	glGenVertexArrays(1, &vertexArrayId);
	glBindVertexArray(vertexArrayId);
	
	glGenBuffers(1, &vertexBuffer);
	glBindBuffer(GL_ARRAY_BUFFER, vertexBuffer);
	glBufferData(GL_ARRAY_BUFFER, sizeof(g_vertex_buffer_data), g_vertex_buffer_data, GL_STATIC_DRAW);

	exampleShaderId = LoadShaders("resources/shaders/basic_vertex.vs", "resources/shaders/basic_fragment.fs");
}

void RunWindow(GLFWwindow* window)
{
	// while the window shouldn't be closed and the escape button hasn't been pressed, display & update the window
	while (!glfwWindowShouldClose(window) && glfwGetKey(window, GLFW_KEY_ESCAPE) != GLFW_PRESS) {
		glClear(GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT);


		glUseProgram(exampleShaderId);
		glEnableVertexAttribArray(0);
		glBindBuffer(GL_ARRAY_BUFFER, vertexBuffer);
		glVertexAttribPointer(
			0,
			3,
			GL_FLOAT,
			GL_FALSE,
			0,
			(void*) 0
		);

		glDrawArrays(GL_TRIANGLES, 0, 3);
		glDisableVertexAttribArray(0);

		glfwPollEvents();
		glfwSwapBuffers(window);
	}
}

void CleanUpWindow(GLFWwindow* window)
{
	if(window != nullptr){
		glfwDestroyWindow(window);
	}
	glfwTerminate();
}


int main()
{
	if (glfwInit() == 0) {
		std::cerr << "Was unable to initialize GLFW." << std::endl;
		return 1;
	}

	// configuring the window
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	auto* _mainWindow = glfwCreateWindow(1280, 720, "COMP3016 PCG Terrain Tool", nullptr, nullptr);

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

	InitTriangle();

	glClearColor(.2F, .2F, .2F, 1.0F);

	RunWindow(_mainWindow);

	CleanUpWindow(_mainWindow);
}
