//
// Radial Monochrome Pixel Shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 u_resolution;
uniform float u_radius;

void main()
{
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
    float gray = dot(texColor.rgb, vec3(0.299, 0.587, 0.114));
    
    // Calculate the distance from the current pixel to the center
    vec2 center = u_resolution * 0.5;
    vec2 pos = gl_FragCoord.xy;
    float dist = distance(pos, center) / u_radius;
    
    // Use smoothstep for a smoother transition
    float intensity = smoothstep(0.0, 1.0, dist);
    
    // Mix between grayscale and original color based on the distance
    vec3 finalColor = mix(vec3(gray), texColor.rgb, intensity);
    
    gl_FragColor = vec4(finalColor, texColor.a) * v_vColour;
}