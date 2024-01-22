import SwiftUI

struct ColorShader: ViewModifier {
    let isEnabled: Bool
    
    func body(content: Content) -> some View {
        content
            .visualEffect { content, geometry in
                content.colorEffect(shader(of: geometry.size), isEnabled: isEnabled)
            }
    }
    
    private func shader(of contentSize: CGSize) -> Shader {
        ShaderLibrary.sizeAwareColor(.float2(contentSize))
    }
}

extension View {
    func colorShader(isEnabled: Bool = true) -> some View {
        modifier(ColorShader(isEnabled: isEnabled))
    }
}
