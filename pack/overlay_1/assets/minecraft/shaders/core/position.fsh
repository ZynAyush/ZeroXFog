#version 150

#moj_import <fog.glsl>

uniform vec4 ColorModulator;
in float sphericalVertexDistance;
in float cylindricalVertexDistance;
out vec4 fragColor;

void main() {
    fragColor = apply_fog(ColorModulator, sphericalVertexDistance, cylindricalVertexDistance,
                          FogEnvironmentalStart, FogEnvironmentalEnd,
                          FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
}
