#include <common/ModelLoader.hpp>
#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <glad/glad.h>
#include <glm/glm.hpp>


#include "../../dependencies/SOIL2/src/SOIL2/SOIL2.h"

//TODO: move to utilities
float ParseFloat(const std::string& string)
{
    try {
        return std::stof(string);
    } catch(const std::exception& e)
    {
        std::cout << "Failed to parse string as float: " << string << std::endl;
        throw e;
    }
}

// TODO: move to utilities
std::vector<std::string> split(const std::string& s, char splitChar)
{
    std::vector<std::string> tokens;
    std::string token;
    std::istringstream tokenStream(s);
    while (std::getline(tokenStream, token, splitChar))
    {
        tokens.push_back(token);
    }
    return tokens;
}

glm::vec3 TokensToVec3(std::vector<std::string>& tokens)
{
    return glm::vec3(
        ParseFloat(tokens[1]),
        ParseFloat(tokens[2]),
        ParseFloat(tokens[3])
    );
}

glm::vec2 TokensToVec2(std::vector<std::string>& tokens)
{
    return glm::vec2(
        ParseFloat(tokens[1]),
        ParseFloat(tokens[2])
    );
}

Mesh ModelLoader::LoadObjModel(const char* objPath, Texture texture)
{
    std::cout << "Loading OBJ Model: " << objPath << std::endl;
    
    std::vector<glm::vec3> temp_vertices;
    std::vector<glm::vec3> temp_vns;
    std::vector<glm::vec2> temp_uvs;

    std::vector<Vertex> vertices;
    std::vector<unsigned int> indices;

    std::ifstream objStream(objPath, std::ios::in);
    std::string currentLine;
    std::vector<std::string> currentTokens;

    if(objStream.is_open())
    {
        while(std::getline(objStream, currentLine))
        {
            std::string tempLine = currentLine;
            currentTokens.clear();

            if(currentLine.rfind("#", 0) == 0)
            {
                continue;
            }

            std::istringstream iss(currentLine);
            while(iss >> currentLine)
            {
                currentTokens.push_back(currentLine);
            }
            

            // TODO: parse materials
            
            std::string first = currentTokens[0];
            // Size - 1 to ignore the identifier 
            if(first == "vt" && currentTokens.size() - 1 == 2)
            {
                glm::vec2 uv = TokensToVec2(currentTokens);
                temp_uvs.push_back(uv);
            }

            if(currentTokens.size() - 1 != 3){
                    continue;
            }
            
            if(first == "v")
            {   
                glm::vec3 pos = TokensToVec3(currentTokens);
                temp_vertices.push_back(pos);
            } else if(first == "vn")
            {
                glm::vec3 normal = TokensToVec3(currentTokens);
                temp_vns.push_back(normal);
            } else if(first == "f")
            {

                // Parse the vertex information for each vertex of the face
                std::vector<std::string> v1Tokens = split(currentTokens[1], '/');
                std::vector<std::string> v2Tokens = split(currentTokens[2], '/');
                std::vector<std::string> v3Tokens = split(currentTokens[3], '/');

                Vertex v1;
                Vertex v2;
                Vertex v3;

                
                int posLoc = std::stoi(v1Tokens[0]) - 1;
                v1.position = temp_vertices[posLoc];
                
                int normLoc = std::stoi(v1Tokens[2]) - 1;
                v1.normal = temp_vns[normLoc];
                
                int uvLoc = std::stoi(v1Tokens[1]) - 1;
                v1.texCoords = temp_uvs[uvLoc];

                v2.position = temp_vertices[std::stoi(v2Tokens[0]) - 1];
                v2.normal = temp_vns[std::stoi(v2Tokens[2]) - 1];
                v2.texCoords = temp_uvs[std::stoi(v2Tokens[1]) - 1];

                v3.position = temp_vertices[std::stoi(v3Tokens[0]) - 1];
                v3.normal = temp_vns[std::stoi(v3Tokens[2]) - 1];
                v3.texCoords = temp_uvs[std::stoi(v3Tokens[1]) - 1];

                
                vertices.push_back(v1);
                vertices.push_back(v2);
                vertices.push_back(v3);
                
                indices.push_back(vertices.size() - 3);
                indices.push_back(vertices.size() - 2);
                indices.push_back(vertices.size() - 1);
            } 
        }
        std::cout << "finished loading.." << std::endl;
    } else {
        std::cerr << "Was unable to open: " << objPath << std::endl;
        std::cin.ignore();
        return Mesh();
    }   

    	return Mesh(vertices, indices, std::vector<Texture>{texture});
}

Texture ModelLoader::LoadTexture(const char* imagePath, int imgWidth, int imgHeight){
    unsigned int textureId;
	unsigned char* image = SOIL_load_image(imagePath, &imgWidth, &imgHeight, NULL, SOIL_LOAD_RGBA);
	glCreateTextures(GL_TEXTURE_2D, 1, &textureId);
	
	glTextureParameteri(textureId, GL_TEXTURE_MIN_FILTER, GL_NEAREST );
	glTextureParameteri(textureId, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
	glTextureParameteri(textureId, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTextureParameteri(textureId, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

	glTextureStorage2D(textureId, 1, GL_RGBA8, imgWidth, imgHeight);
	glTextureSubImage2D(textureId, 0, 0, 0, imgWidth, imgHeight, GL_RGBA, GL_UNSIGNED_BYTE, image);
	glGenerateMipmap(textureId);

    Texture loadedTexture;
    loadedTexture.id = textureId;

    return loadedTexture;
}

Mesh ModelLoader::CreatePlaneMesh(float size, Texture texture)
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

Mesh ModelLoader::CreateCubeMesh(float size, Texture texture)
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