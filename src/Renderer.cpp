#include "Renderer.h"
#include <iostream>
#include <GL/glew.h>

void GLClearError() {
    while (glGetError() != GL_NO_ERROR);
}

bool GLLogCall() {
    while (GLenum error = glGetError()) {
        std::cout << "[OpenGL Error] (" << error << ")" << std::endl;
        return false;
    }
    return true;
}