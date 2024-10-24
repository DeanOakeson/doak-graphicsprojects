#version 330 core

out vec4 FragColor;

in vec2 TexCoord;
in vec3 ourColor;

uniform sampler2D texture1;
uniform sampler2D texture2;
uniform float mixValue;
  
void main()
{
    FragColor = mix(texture(texture1, vec2(TexCoord.x, TexCoord.y)), texture(texture2, vec2(TexCoord.x, 1.0 - TexCoord.y)), mixValue);
}