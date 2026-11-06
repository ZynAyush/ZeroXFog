// ZeroFog Sodium compatibility for Sodium 0.9.x on Minecraft 26.2+.
const int FOG_SHAPE_SPHERICAL = 0;
const int FOG_SHAPE_CYLINDRICAL = 1;

float linear_fog_value(float vertexDistance, float fogStart, float fogEnd) {
    return 0.0;
}

float total_fog_value(float sphericalVertexDistance, float cylindricalVertexDistance,
                      float environmentalStart, float environmentalEnd,
                      float renderDistanceStart, float renderDistanceEnd) {
    return 0.0;
}

vec4 _linearFog(vec4 fragColor, vec2 fragDistance, vec4 fogColor,
                vec2 environmentFog, vec2 renderFog, float fadeFactor) {
#ifdef USE_FOG
    // Disable distance fog but retain Sodium's chunk fade-in transition.
    float fogValue = 1.0 - fadeFactor;
    return vec4(mix(fragColor.rgb, fogColor.rgb, fogValue * fogColor.a), fragColor.a);
#else
    return fragColor;
#endif
}

vec2 getFragDistance(vec3 position) {
    return vec2(max(length(position.xz), abs(position.y)), length(position));
}
