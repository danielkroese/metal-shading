import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 32) {
            Image(systemName: "bicycle")
                        .font(.system(size: 200))
                        .pixellationShader()
            
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .kerning(2)
                .foregroundStyle(.green)
                .wiggleShader()
        }
    }
}

#Preview {
    ContentView()
}
