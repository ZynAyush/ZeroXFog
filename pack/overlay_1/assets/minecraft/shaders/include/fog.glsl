// ZeroFog: 1.21.6-1.21.8 shader include API. Preserve uniforms, disable fog blending.
layout(std140) uniform Fog {
    vec4 FogColor;
    float FogEnvironmentalStart;
    float FogEnvironmentalEnd;
    float FogRenderDistanceStart;
    float FogRenderDistanceEnd;
    float FogSkyEnd;
    float FogCloudsEnd;
};

float linear_fog_value(float vertexDistance, float fogStart, float fogEnd) {
    return 0.0;
}

float total_fog_value(float sphericalVertexDistance, float cylindricalVertexDistance,
                      float environmentalStart, float environmentalEnd,
                      float renderDistanceStart, float renderDistanceEnd) {
    return 0.0;
}

vec4 apply_fog(vec4 inColor, float sphericalVertexDistance, float cylindricalVertexDistance,
               float environmentalStart, float environmentalEnd,
               float renderDistanceStart, float renderDistanceEnd, vec4 fogColor) {
    return inColor;
}

float fog_spherical_distance(vec3 pos) {
    return length(pos);
}

float fog_cylindrical_distance(vec3 pos) {
    return max(length(pos.xz), abs(pos.y));
}
