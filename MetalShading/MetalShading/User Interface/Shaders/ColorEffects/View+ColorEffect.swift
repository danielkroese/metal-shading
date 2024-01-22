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

struct TimeColorShader: ViewModifier {
    private let startDate = Date()
    
    func body(content: Content) -> some View {
        TimelineView(.animation) { _ in
            content.visualEffect { content, geometry in
                content.colorEffect(shader(of: geometry.size))
            }
        }
    }
    
    private func shader(of contentSize: CGSize) -> Shader {
        ShaderLibrary.timeGradient(
            .float2(contentSize),
            .float(startDate.timeIntervalSinceNow)
        )
    }
}

extension View {
    func colorShader(isEnabled: Bool = true) -> some View {
        modifier(ColorShader(isEnabled: isEnabled))
    }
    
    func timeColorShader() -> some View {
        modifier(TimeColorShader())
    }
}
