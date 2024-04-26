#pragma once

#include <GL/glew.h>

#define GLCall(x) GLClearError();\
    x;\
    GLLogCall();

void GLClearError();
bool GLLogCall();