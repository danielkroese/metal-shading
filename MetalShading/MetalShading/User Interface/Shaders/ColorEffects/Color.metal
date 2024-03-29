#include <metal_stdlib>
using namespace metal;

float oscillate(float f) {
    return 0.5 * (sin(f) + 1);
}

[[ stitchable ]] 
half4 sizeAwareColor(float2 position,
                     half4 color,
                     float2 size) {
    
    return half4(position.x / size.x,
                 position.y / size.y,
                 position.x / size.y,
                 1.0);
}

[[ stitchable ]]
half4 timeGradient(float2 position, 
                       half4 color,
                       float2 size,
                       float time) {
    
    return half4(oscillate(2 * time + position.x/size.x),
                 oscillate(4 * time + position.y/size.y),
                 oscillate(-2 * time + position.x/size.y),
                 1.0);
}
