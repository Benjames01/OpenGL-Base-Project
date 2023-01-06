#include <common/Shader.hpp>
#include <common/ShaderLoader.hpp>


ShaderProgram::ShaderProgram(const char* vertexPath, const char* fragmentPath){
    this->id = LoadShaders(vertexPath, fragmentPath);
}


