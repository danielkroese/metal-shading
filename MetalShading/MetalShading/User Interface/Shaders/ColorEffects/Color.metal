#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] 
half4 color(float2 position, half4 color) {
    return half4(position.x/255.0, 50.0, 50.0, 1.0);
}
