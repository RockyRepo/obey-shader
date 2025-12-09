void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 p = (-iResolution.xy + 2.0*fragCoord.xy) / iResolution.y;
    vec2 uv = p * 10.0;
    vec3 col = vec3(0.0);
    
    float d = length(uv);
    float f = 0.5 + 0.5*sin(iTime + d*10.0);
    
    col += mix(vec3(0.6,0.5,0.5), vec3(1.0,0.9,0.9), f) * pow(0.5 + 0.5*cos(iTime*2.0 + d*5.0), 6.0);
    
    float a = 0.3;
    float b = 0.7;
    float c = 1.3;
    float d2 = 2.0;
    
    col += mix(vec3(1.0, 0.0, 0.0), vec3(1.0, 1.0, 1.0), f) * pow(0.5 + 0.5*cos(iTime*4.0 + d*c*d2*2.0), 30.0);
    
    col += mix(vec3(0.0, 0.0, 1.0), vec3(0.5, 0.5, 1.0), f) * pow(0.5 + 0.5*cos(iTime*8.0 + d2*a*d2*2.0), 10.0);
    
    fragColor = vec4(col, 1.0);
}
