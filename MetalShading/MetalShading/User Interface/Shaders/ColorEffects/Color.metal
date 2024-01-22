#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] 
half4 sizeAwareColor(float2 position, half4 color, float2 size) {
    return half4(position.x * 2 / size.x, position.y / size.y, position.x - 1 / size.x, 1.0);
}
