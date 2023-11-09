#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexCoord;

out vec3 ourColor2;
out vec2 TexCoord2;
uniform mat4 transform2;

void main()
{
	gl_Position = transform2 * vec4(aPos, 1.0);
	ourColor2 = aColor;
	TexCoord2 = vec2(aTexCoord.x, aTexCoord.y);
}
