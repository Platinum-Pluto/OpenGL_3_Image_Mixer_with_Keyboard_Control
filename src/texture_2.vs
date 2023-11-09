#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexCoord;

out vec3 ourColor1;
out vec2 TexCoord1;
uniform mat4 transform1;

void main()
{
	gl_Position = transform1 * vec4(aPos, 1.0);
	ourColor1 = aColor;
	TexCoord1 = vec2(aTexCoord.x, aTexCoord.y);
}