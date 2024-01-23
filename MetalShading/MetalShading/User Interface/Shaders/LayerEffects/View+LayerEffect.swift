import SwiftUI

struct PixellationShader: ViewModifier {
    private let pixelSize: Float = 8
    private let startDate = Date()
    
    func body(content: Content) -> some View {
        TimelineView(.animation) { _ in
            content.layerEffect(shader, maxSampleOffset: .zero)
        }
    }
    
    private var shader: Shader {
        ShaderLibrary.pixellate(
            .float(pixelSize),
            .float(startDate.timeIntervalSinceNow)
        )
    }
}

extension View {
    func pixellationShader() -> some View {
        modifier(PixellationShader())
    }
}
