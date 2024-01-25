import SwiftUI

struct ContentView: View {
    @State private var hueRotation: Angle = .zero
    
    var body: some View {
        VStack(spacing: 32) {
            Image(systemName: "bicycle")
                        .font(.system(size: 200))
                        .foregroundStyle(.green)
                        .hueRotation(hueRotation)
                        .pixellationShader()
            
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .kerning(2)
                .foregroundStyle(.green)
                .hueRotation(hueRotation)
                .wiggleShader()
        }
        .background {
            Color.white.colorShader()
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 3.0).repeatForever()) {
                hueRotation = .degrees(360)
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
