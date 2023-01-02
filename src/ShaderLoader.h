#ifndef __SHADER_LOADER_H__
#define __SHADER_LOADER_H__

#include "glad/glad.h"
#include "GLFW/glfw3.h"

unsigned int LoadShaders(const char* vertexPath, const char* fragmentPath);

#endif // __SHADER_LOADER_H__