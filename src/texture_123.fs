#version 330 core
out vec4 FragColor2;

in vec3 ourColor2;
in vec2 TexCoord2;

uniform float mixValue2;

// texture samplers

uniform sampler2D texture5;
uniform sampler2D texture6;

void main()
{
	// linearly interpolate between both textures
	FragColor2 = mix(texture(texture5, TexCoord2), texture(texture6, TexCoord2), mixValue2);

}