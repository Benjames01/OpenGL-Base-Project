#ifndef __MESH_H__
#define __MESH_H__

#include <common/Shader.hpp>
#include <iostream>
#include <model/Graphics.hpp>
#include <vector>


class Mesh
{
    public:
        Mesh(){};
        Mesh(
            std::vector<Vertex> vertices,
            std::vector<unsigned int> indices,
            std::vector<Texture> textures
            );
        ~Mesh(){}

        void Update();
        void Render(ShaderProgram &shader, glm::mat4 &viewMatrix, glm::mat4 &projectionMatrix);

        void ScaleBy(glm::vec3 scaleAmount);
        void SetScale(glm::vec3 newScale);

        void RotateBy(glm::vec3 rotateAmount);
        void SetRotation(glm::vec3 newRotation);

        void TranslateBy(glm::vec3 translateAmount);
        void SetTranslation(glm::vec3 newPosition);

    private:
        unsigned int VAO;
        unsigned int VBO;
        unsigned int EBO;

        std::vector<Vertex> vertices;
        std::vector<unsigned int> indices;
        std::vector<Texture> textures;

        glm::vec3 scale; // Scale of the mesh
        glm::vec3 rotation; // Rotation of the mesh
        glm::vec3 position; // Current position of the mesh

        void Initialise();
};

#endif