#ifndef __USERINPUT_HPP_
#define __USERINPUT_HPP_

#include <glm/glm.hpp>
#include <GLFW/glfw3.h>
#include <imgui.h>
#include <imgui_impl_glfw.h>
#include <imgui_impl_opengl3.h>

void CalculateMatrices();
void SetWindow(GLFWwindow* newWindow);

glm::mat4 GetViewMatrix();
glm::mat4 GetProjectionMatrix();

bool GetWindowsShowing();


#endif