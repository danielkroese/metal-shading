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

extension View {
    func distortionShader() -> some View {
        modifier(DistortionShader())
    }
}
