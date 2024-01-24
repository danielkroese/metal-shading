import SwiftUI

struct PixellationShader: ViewModifier {
    @State var pixelSize: Float = 8
    private let startDate = Date()
    
    func body(content: Content) -> some View {
        TimelineView(.animation) { _ in
            content.layerEffect(shader, maxSampleOffset: .zero)
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 2.0).delay(1.0).repeatForever()) {
                pixelSize = 1
            }
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
