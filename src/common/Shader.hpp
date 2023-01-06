#ifndef __SHADER_H__
#define __SHADER_H__

#include <map>
#include <string>


enum UniformType {ATTRIBUTE, UNIFORM};

class ShaderUniform {
    public:
        
        ShaderUniform(unsigned int location, UniformType type)
        {
            this->location = location;
            this->type = type;
        };
    private:
        UniformType type;
        unsigned int location;
};

class ShaderProgram{
public:
    ShaderProgram(){};
    ShaderProgram(const char* vertexPath, const char* fragmentPath);
    ~ShaderProgram(){};

    void ModifyUniform(std::string name, UniformType type);

    unsigned int GetId()
    {
        return id;
    }

private:
    unsigned int id = 0;
    std::map<std::string, ShaderUniform> uniforms;
};



#endif