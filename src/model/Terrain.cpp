#include <Model/Terrain.hpp>
#include <glad/glad.h>
#include <cmath>

void Terrain::GenerateTerrain(float* heights, int size)
{
    // Clear old data
    vertices.clear();
    indices.clear();
    // TODO: decide to clear textures or not, currently not 

    // Calculate how many vertices are in each row/column
    int vertexCount = pow((size-1), 2);;

    // TODO: I think every other row can be skipped as an optimisation
    /*e.g: 
     * |1|2|3| 
     * only need to calculate the vertices for row(column in diagram)
     * 1 and then 3, which means row two's shared vertices will already be calculated
     */
    // Generate the vertices
    for(int row = 0; row < size; row++)
    {
        for(int col = 0; col < size; col++)
        {
            Vertex vertex;

            // Calculate the position of the vertex
            vertex.position.x = col;
            vertex.position.y = heights[row * size + col];
            vertex.position.z = row;

            // Calculate the UV coordinates of the vertex;
            vertex.texCoords.x = (float) col / (float)(size-1);
            vertex.texCoords.y = (float) row / (float)(size-1);

            // TODO: calculate the normal of the vertex
            vertex.normal = glm::vec3(0, 1, 0);

            vertices.push_back(vertex);
        }
    }
}

void Terrain::Render(ShaderProgram &shader, glm::mat4 &view, glm::mat4 &projection)
{

}

