#ifndef __GRAPHICS_H__
#define __GRAPHICS_H__

#include <glm/glm.hpp>

typedef struct 
{
    glm::vec3 position;
    glm::vec3 normal;
    glm::vec2 texCoords;

} Vertex;


typedef struct {
    unsigned int id;
    const char* sourcePath;
} Texture;


#endif