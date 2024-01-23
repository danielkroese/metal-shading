import SwiftUI

struct PixellationShader: ViewModifier {
    @State var pixelSize: Float = 12
    
    func body(content: Content) -> some View {
        content
            .layerEffect(shader, maxSampleOffset: .zero)
            .onAppear {
                withAnimation(.easeInOut(duration: 2.0).repeatForever()) {
                    pixelSize = 1
                }
            }
    }
    
    private var shader: Shader {
        ShaderLibrary.pixellate(.float(pixelSize))
    }
}

extension View {
    func pixellationShader() -> some View {
        modifier(PixellationShader())
    }
}
