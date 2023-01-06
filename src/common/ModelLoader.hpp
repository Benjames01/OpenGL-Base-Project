#ifndef __MODELLOADER_H__
#define __MODELLOADER_H__

#include <model/Mesh.hpp>

class ModelLoader{
public:
    static Mesh LoadGLTFModel(const char* gltfPath);
    static Mesh LoadObjModel(const char* objPath, Texture texture);
    static Texture LoadTexture(const char* imagePath, int imgWidth = 2048, int imgHeight = 2048);
    
    static Mesh CreateCubeMesh(float size, Texture texture);
    static Mesh CreatePlaneMesh(float size, Texture texture);
};

#endif