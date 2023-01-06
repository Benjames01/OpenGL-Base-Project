#version 460 core

in vec2 UV;
in vec3 normal;

out vec4 colour;

uniform sampler2D textureSampler;

// vec4 RandomColour()
// {
//     return vec4(
//         (float)rand() / RAND_MAX,
//         (float)rand() / RAND_MAX,
//         (float)rand() / RAND_MAX,
//         1.0);
// }


void main()
{
    // colour = RandomColour();
    // Calculate the final color
    colour = vec4(1.0, 0.0, 0.0, 1.0); // red
    colour = vec4(texture(textureSampler, vec2(UV.x, 1.0 - UV.y)).rgb, 1.0);
}