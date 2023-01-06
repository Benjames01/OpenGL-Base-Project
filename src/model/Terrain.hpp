#ifndef __TERRAIN_H__
#define __TERRAIN_H__

#include <common/Shader.hpp>
#include <model/Graphics.hpp>
#include <vector>

class Terrain
{
    std::vector<float> heightMap; // Holds the height data for the terrain
    std::vector<Vertex> vertices; // Holds the vertex data for rendering the terrain
    std::vector<unsigned int> indices;
    std::vector<Texture> textures;

    int width, height; // Width and height of the terrain in vertices
    float scale; // Scale factor for the terrain

    unsigned int VAO, VBO, EBO;

public:
    // Constructor
    Terrain(int width, int height, float scale)
        : width(width), height(height), scale(scale)
    {

    }

    void GenerateTerrain(float* heights, int size);

    // Renders the terrain using OpenGL
    void Render(ShaderProgram &shader, glm::mat4 &view, glm::mat4 &projection);
};

#endif