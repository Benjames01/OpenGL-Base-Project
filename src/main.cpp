#include <common/ModelLoader.hpp>
#include <common/ShaderLoader.hpp>
#include <common/Shader.hpp>
#include <common/UserInput.hpp>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <gui/ToolWindow.hpp>
#include <imgui.h>
#include <imgui_impl_glfw.h>
#include <imgui_impl_opengl3.h>
#include <iostream>
#include <model/Mesh.hpp>

#include "../dependencies/SOIL2/src/SOIL2/SOIL2.h"

using namespace glm;

static int width = 1280;
static int height = 720;

ShaderProgram exampleShaderId;

unsigned int textureLoc;

Mesh cube;
Mesh monkey;
Mesh plane;

void InitTriangle()
{
	exampleShaderId = ShaderProgram("resources/shaders/basic_vertex.vs", "resources/shaders/basic_fragment.fs");
	textureLoc = glGetUniformLocation(exampleShaderId.GetId(), "textureSampler");

	Texture texture = ModelLoader::LoadTexture("resources/textures/new.png");
	cube = ModelLoader::CreateCubeMesh(0.5f, texture);

	Texture monTexture = ModelLoader::LoadTexture("resources/textures/monke2.png");
	monkey = ModelLoader::LoadObjModel("resources/models/blender_monkey.obj", monTexture);
	monkey.SetTranslation(glm::vec3(5,0,0));

	Texture texture2 = ModelLoader::LoadTexture("resources/textures/square.png");
	plane =  ModelLoader::CreatePlaneMesh(10, texture2);
	plane.SetTranslation(glm::vec3(0, -5, 0));
}

void AnimateScale(Mesh &mesh, float time)
{
	// calculate the scale factor using a sin wave
	float scaleFactor = 0.5f + (1.0f + std::sin(time)) / 2.0f; 

	mesh.SetScale(glm::vec3(scaleFactor, scaleFactor, scaleFactor));
}

void AnimateRotation(Mesh &mesh, float time)
{
	time *= 2;

	static float startTime = 0.0f;

    // Calculate the rotation angle
    float rotationAngle = time - startTime;

    // Set the start time to the current time
    startTime = time;

    // Rotate the mesh
    mesh.RotateBy(glm::vec3(rotationAngle, rotationAngle, rotationAngle));	
}

void RunWindow(GLFWwindow* window)
{

	Texture roomTexture = ModelLoader::LoadTexture("resources/textures/my-texture.bmp");
	Mesh room = ModelLoader::LoadObjModel("resources/models/merc.obj", roomTexture);
	monkey.SetTranslation(glm::vec3(-5,0,0));

	SetWindow(window);
	unsigned int matrixId = glGetUniformLocation(exampleShaderId.GetId(), "MVP");
		// Our state
    bool show_demo_window = true;
    bool show_another_window = false;
    ImVec4 clear_color = ImVec4(0.45f, 0.55f, 0.60f, 1.00f);

	TestWindow myTestWindow;
	MenuBar mainMenu;

	// while the window shouldn't be closed and the escape button hasn't been pressed, display & update the window
	while (!glfwWindowShouldClose(window) && glfwGetKey(window, GLFW_KEY_ESCAPE) != GLFW_PRESS) {
		glClear(GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT);
		static double time = 0.0f;

		CalculateMatrices();
		glm::mat4 projectionMatrix = GetProjectionMatrix();
		glm::mat4 viewMatrix = GetViewMatrix();

		AnimateScale(cube, (float) time);
		AnimateRotation(cube, (float) time);

		room.Render(exampleShaderId, viewMatrix, projectionMatrix);
		monkey.Render(exampleShaderId, viewMatrix, projectionMatrix);
		cube.Render(exampleShaderId, viewMatrix, projectionMatrix);
		plane.Render(exampleShaderId, viewMatrix, projectionMatrix);
		
		glfwPollEvents();

        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();

		mainMenu.Display();
		myTestWindow.SetShowing(GetWindowsShowing());
		myTestWindow.Display();


		ImGui::EndFrame();
		ImGui::Render();
		ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

        glfwSwapBuffers(window);
		time += 0.001f;
	}
}

void CleanUpWindow(GLFWwindow* window)
{    // Cleanup
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();

	glDeleteProgram(exampleShaderId.GetId());

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
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 6);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
	glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE);

	auto* _mainWindow = glfwCreateWindow(width, height, "COMP3016 PCG Terrain Tool", nullptr, nullptr);

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

	glfwSetInputMode(_mainWindow, GLFW_STICKY_KEYS, GL_TRUE);
	glfwSetInputMode(_mainWindow, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
	int width, height;
	glfwGetWindowSize(_mainWindow, &width, &height);
	glfwSetCursorPos(_mainWindow, width/2, height/2); // Lock the cursor to centre screen
	glfwPollEvents();	

	glEnable(GL_DEPTH_TEST);
	glEnable(GL_CULL_FACE);

	glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	glDepthFunc(GL_LESS);

	InitTriangle();

	glClearColor(0.5F, 0.5F, 1.0F, 1.0F);

	RunWindow(_mainWindow);

	CleanUpWindow(_mainWindow);
}
