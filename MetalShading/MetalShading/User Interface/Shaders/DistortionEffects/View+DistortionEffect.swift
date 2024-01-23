import SwiftUI

struct DistortionShader: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(100)
            .drawingGroup()
            .distortionEffect(
            ShaderLibrary.distortion(),
            maxSampleOffset: CGSize(width: 100, height: 0)
        )
    }
}

struct WiggleShader: ViewModifier {
    private let startDate = Date()
    
    private let verticalPadding = 50.0
    
    func body(content: Content) -> some View {
        content
            .padding(.vertical, verticalPadding)
            .drawingGroup()
            .distortionEffect(
                shader,
                maxSampleOffset: CGSize(width: .zero, height: verticalPadding)
            )
    }
    
    private var shader: Shader {
        ShaderLibrary.wiggle(.float(startDate.timeIntervalSinceNow))
    }
}

extension View {
    func distortionShader() -> some View {
        modifier(DistortionShader())
    }
    
    func wiggleShader() -> some View {
        modifier(WiggleShader())
    }
}
