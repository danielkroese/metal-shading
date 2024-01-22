#include <metal_stdlib>
using namespace metal;

[[ stitchable ]]
float2 distortion(float2 position) {
    return float2(position.x * 2, position.y);
}
