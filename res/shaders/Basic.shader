#shader vertex
#version 330 core

layout(location = 0) in vec4 position;

out vec3 vertexColor; // Output a color to the fragment shader

void main()
{
    gl_Position = position;
    // Generate a simple color gradient based on the vertex position
    vertexColor = vec3(position.x + 0.5, position.y + 0.5, 0.5);
}

#shader fragment
#version 330 core

in vec3 vertexColor; // Receive the color from the vertex shader
layout(location = 0) out vec4 color;

uniform vec4 u_Color;

void main()
{
    color = vec4(vertexColor.x, u_Color.y, u_Color.z, u_Color.w); // Use the color passed from the vertex shader
}