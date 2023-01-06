#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <iostream>
#include <model/Mesh.hpp>

#include "glm/gtc/matrix_transform.hpp"

Mesh::Mesh(
    std::vector<Vertex> vertices,
    std::vector<unsigned int> indices,
    std::vector<Texture> textures)
{
    this->vertices = vertices;
    this->indices = indices;
    this->textures = textures;

    // Warning if creating a mesh with 0 vertices, indices or textures;
    if(vertices.size() == 0){
        std::cerr << "Creating a mesh with 0 vertices" << std::endl;
    }
    if(indices.size() == 0){
        std::cerr << "Creating a mesh with 0 indices" << std::endl;
    }
    if(textures.size() == 0){
        std::cerr << "Creating a mesh with 0 textures" << std::endl;
    }

    this->Initialise();
}

void Mesh::Initialise()
{
    // initialise scale, rotation and position to identity values
    scale = glm::vec3(1.0f, 1.0f, 1.0f);
    rotation = glm::vec3(0.0f, 0.0f, 0.0f);
    position = glm::vec3(0.0f, 0.0f, 0.0f);

    // Using Direct State Access

    glCreateVertexArrays(1, &VAO);
    glCreateBuffers(1, &VBO);
    glCreateBuffers(1, &EBO);

    glNamedBufferData(VBO, sizeof(Vertex) * vertices.size(), &vertices[0], GL_STATIC_DRAW);
    glNamedBufferData(EBO, sizeof(unsigned int) * indices.size(), &indices[0], GL_STATIC_DRAW);

    // Vertex positions
    glEnableVertexArrayAttrib(VAO, 0);
    glVertexArrayAttribBinding(VAO, 0, 0);
    glVertexArrayAttribFormat(VAO, 0, 3, GL_FLOAT, GL_FALSE, 0);

    // Vertex normals
    glEnableVertexArrayAttrib(VAO, 1);
    glVertexArrayAttribBinding(VAO, 1, 0);
    glVertexArrayAttribFormat(VAO, 1, 3, GL_FLOAT, GL_FALSE, offsetof(Vertex, normal));

    // Vertex texture coordinates
    glEnableVertexArrayAttrib(VAO, 2);
    glVertexArrayAttribBinding(VAO, 2, 0);
    glVertexArrayAttribFormat(VAO, 2, 2, GL_FLOAT, GL_FALSE, offsetof(Vertex, texCoords));

    glVertexArrayVertexBuffer(VAO, 0, VBO, 0, sizeof(Vertex)); 
    glVertexArrayElementBuffer(VAO, EBO);
}

void Mesh::Render(ShaderProgram &shader, glm::mat4 &viewMatrix, glm::mat4 &projectionMatrix)
{
    glUseProgram(shader.GetId());

    // TODO: iterate through textures and assign to texture units accordingly
    glBindTextureUnit(0, textures[0].id);
    glUniform1i(glGetUniformLocation(shader.GetId(), "textureSampler"), 0);     

    glm::mat4 modelMatrix = glm::mat4(1.0f);
    modelMatrix = glm::translate(modelMatrix, position);
    modelMatrix = glm::rotate(modelMatrix, glm::radians(rotation.x), glm::vec3(1.0f, 0.0f, 0.0f));
    modelMatrix = glm::rotate(modelMatrix, glm::radians(rotation.y), glm::vec3(0.0f, 1.0f, 0.0f));
    modelMatrix = glm::rotate(modelMatrix, glm::radians(rotation.z), glm::vec3(0.0f, 0.0f, 1.0f));
    modelMatrix = glm::scale(modelMatrix, scale);

    glm::mat4 mvp = projectionMatrix * viewMatrix * modelMatrix;
    unsigned int matrixId = glGetUniformLocation(shader.GetId(), "MVP");
    glUniformMatrix4fv(matrixId, 1, GL_FALSE, &mvp[0][0]);

    glBindVertexArray(VAO);
    glDrawElements(GL_TRIANGLES, indices.size(), GL_UNSIGNED_INT, 0);

    // Clear up
    glBindVertexArray(0);    
    glBindTextureUnit(0, 0);
}

void Mesh::ScaleBy(glm::vec3 scaleAmount)
{
    scale += scaleAmount;
}

void Mesh::SetScale(glm::vec3 newScale)
{
    scale = newScale;
}

void Mesh::RotateBy(glm::vec3 rotateAmount)
{
    rotation += rotateAmount;
}

void Mesh::SetRotation(glm::vec3 newRotation)
{
    rotation = newRotation;
}

void Mesh::TranslateBy(glm::vec3 translateAmount)
{
    position += translateAmount;
}

void Mesh::SetTranslation(glm::vec3 newPosition)
{
    position = newPosition;
}


Mesh Mesh::CreatePlaneMesh(float size, Texture texture)
{
	// Define the vertices of the plane
    static const Vertex vertices[] = {
        {{-size, 0, -size}, {0, 1, 0}, {0, 1}},
        {{-size, 0, size}, {0, 1, 0}, {0, 0}},
        {{size, 0, size}, {0, 1, 0}, {1, 0}},
        {{size, 0, -size}, {0, 1, 0}, {1, 1}}
    };

	// Define the indices for the vertices
    static const unsigned int indices[] = {
        0, 1, 2,
        2, 3, 0
    };

	return Mesh(
		std::vector<Vertex>(vertices, vertices + sizeof(vertices) / sizeof(vertices[0])),
	 	std::vector<unsigned int>(indices, indices + sizeof(indices) / sizeof(indices[0])),
	  	std::vector<Texture>{texture});
}

Mesh Mesh::CreateCubeMesh(float size, Texture texture)
{
	// Define the unique normal vectors
	static const glm::vec3 normals[] = {
		{0, 0, 1}, // front face
		{0, 0, -1}, // back face
		{-1, 0, 0}, // left face
		{1, 0, 0}, // right face
		{0, 1, 0}, // top face
		{0, -1, 0} // bottom face
	};

	// Define the indices of the vertices for each face of the cube
	static const unsigned int indices[] = {
	// Front face
	0, 1, 2,
	2, 3, 0,
	// Back face
	4, 5, 6,
	6, 7, 4,
	// Left face
	8, 9, 10,
	10, 11, 8,
	// Right face
	12, 13, 14,
	14, 15, 12,
	// Top face
	16, 17, 18,
	18, 19, 16,
	// Bottom face
	20, 21, 22,
	22, 23, 20
	};

	// Could also use just 8 vertices by having 4 for the front face and 4 for the back
	static const Vertex vertices[] = {
		// Front face
		{{-size, size, size}, normals[0], {0, 1}}, //0
		{{-size, -size, size}, normals[0], {0, 0}},//1
		{{size, -size, size}, normals[0], {1, 0}},//2
		{{size, size, size}, normals[0], {1, 1}},//3
		// Back face
		{{size, size, -size}, normals[1],  {0, 1}},
		{{size, -size, -size}, normals[1],  {0, 0}},
		{{-size, -size, -size}, normals[1], {1, 0}},
		{{-size, size, -size}, normals[1],  {1, 1}},
		// Left face
		{{-size, size, -size}, normals[2], {0, 1}},
		{{-size, -size, -size}, normals[2], {0, 0}},
		{{-size, -size, size}, normals[2], {1, 0}},
		{{-size, size, size}, normals[2], {1, 1}},
		// Right face
		{{size, size, size}, normals[3], {1, 1}},
		{{size, -size, size}, normals[3], {1, 0}},
		{{size, -size, -size}, normals[3], {0, 0}},
		{{size, size, -size}, normals[3], {0, 1}},
		// Top face
		{{size, size, size}, normals[4], {1, 1}},
		{{size, size, -size}, normals[4], {1, 0}},
		{{-size, size, -size}, normals[4], {0, 0}},
		{{-size, size, size}, normals[4], {0, 1}},
		// Bottom face
		{{-size, -size, size}, normals[5], {0, 1}},
		{{-size, -size, -size}, normals[5], {0, 0}},
		{{size, -size, -size}, normals[5], {1, 0}},
		{{size, -size, size}, normals[5], {1, 1}},
	};

	return Mesh(
		std::vector<Vertex>(vertices, vertices + sizeof(vertices) / sizeof(vertices[0])),
	 	std::vector<unsigned int>(indices, indices + sizeof(indices) / sizeof(indices[0])),
	  	std::vector<Texture>{texture});

}
