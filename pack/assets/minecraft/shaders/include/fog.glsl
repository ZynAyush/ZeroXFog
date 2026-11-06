// ZeroFog: disable legacy distance fog.
vec4 linear_fog(vec4 inColor, float vertexDistance, float fogStart, float fogEnd, vec4 fogColor) {
    return inColor;
}

// In the legacy API, 1.0 means the geometry remains fully visible.
float linear_fog_fade(float vertexDistance, float fogStart, float fogEnd) {
    return 1.0;
}

float fog_distance(vec3 pos, int shape) {
    if (shape == 0) {
        return length(pos);
    }
    return max(length(pos.xz), abs(pos.y));
}
