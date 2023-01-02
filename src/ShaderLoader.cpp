#include "ShaderLoader.h"
#include <string>
#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>

void CompileShader(unsigned int shaderId, const char* filePath, std::string shaderCode)
{
    std::cout << "Compiling shader: " << filePath << std::endl;

    GLint compileStatus = GL_FALSE;
    int infoLogLength;
    char const* sourcePointer = shaderCode.c_str();
    glShaderSource(shaderId, 1, &sourcePointer, NULL);
    glCompileShader(shaderId);

    glad_glGetShaderiv(shaderId, GL_COMPILE_STATUS, &compileStatus);
    glad_glGetShaderiv(shaderId, GL_INFO_LOG_LENGTH, &infoLogLength);
    if(infoLogLength > 0)
    {
        std::vector<char> errorMsg(infoLogLength + 1);
        glGetShaderInfoLog(shaderId, infoLogLength, NULL, &errorMsg[0]);
        std::cout << &errorMsg[0] << std::endl;
    }
}

unsigned int CreateShader(GLenum shaderType, const char* filePath, std::string* shaderCode)
{
    unsigned int vertexShaderId = glCreateShader(shaderType);
    std::ifstream shaderStream(filePath, std::ios::in);
    if(shaderStream.is_open())
    {
        std::stringstream sstr;
        sstr << shaderStream.rdbuf();
        *shaderCode = sstr.str();
        shaderStream.close();
    } else {
        std::cerr << "Was unable to open: " << filePath << std::endl;
        std::cin.ignore();
        return 0;
    }

    return vertexShaderId;
}


unsigned int LoadShaders(const char* vertexPath, const char* fragmentPath)
{
    std::string vertexCode;
    std::string fragmentCode;

    // Create the vertex and fragment shader
    unsigned int vertexShaderId = CreateShader(GL_VERTEX_SHADER, vertexPath, &vertexCode);
    unsigned int fragmentShaderId = CreateShader(GL_FRAGMENT_SHADER, fragmentPath, &fragmentCode);

    // Compile the shaders
    CompileShader(vertexShaderId, vertexPath, vertexCode);
    CompileShader(fragmentShaderId, fragmentPath, fragmentCode);

    // Link the program
    std::cout << "Linking the program" << std::endl;
    unsigned int programId = glCreateProgram();
    glAttachShader(programId, vertexShaderId);
    glAttachShader(programId, fragmentShaderId);
    glLinkProgram(programId);

    int linkStatus, infoLogLength;
    glGetProgramiv(programId, GL_LINK_STATUS, &linkStatus);
    glGetProgramiv(programId, GL_INFO_LOG_LENGTH, &infoLogLength);
    if(infoLogLength > 0){
        std::vector<char> errorMsg(infoLogLength + 1);
        glGetProgramInfoLog(programId, infoLogLength, NULL, &errorMsg[0]);
         std::cout << &errorMsg[0] << std::endl;
    }

    // Cleanup
    glDetachShader(programId, vertexShaderId);
    glDetachShader(programId, fragmentShaderId);
    glDeleteShader(vertexShaderId);
    glDeleteShader(fragmentShaderId);

    // Return the program id if linking was successful or 0 if it wasn't
    return linkStatus ? programId : 0;
}

