#version 330 core
out vec4 FragColor1;

in vec3 ourColor1;
in vec2 TexCoord1;

uniform float mixValue1;

// texture samplers

uniform sampler2D texture2;
uniform sampler2D texture4;

void main()
{
	// linearly interpolate between both textures
	FragColor1 = mix(texture(texture2, TexCoord1), texture(texture4, TexCoord1), mixValue1);

}