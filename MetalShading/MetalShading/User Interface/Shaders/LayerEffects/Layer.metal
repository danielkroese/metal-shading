#include <metal_stdlib>
#include <SwiftUI/SwiftUI_Metal.h>
using namespace metal;

[[ stitchable ]]
half4 pixellate(float2 position,
                SwiftUI::Layer layer,
                float size) {
    
    float sample_x = size * round(position.x / size);
    float sample_y = size * round(position.y / size);
    
    return layer.sample(float2(sample_x, sample_y));
}
