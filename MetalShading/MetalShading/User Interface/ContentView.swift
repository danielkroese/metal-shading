import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .font(.largeTitle)
            .fontWeight(.bold)
            .kerning(2)
            .foregroundStyle(.green)
            .wiggleShader()
    }
}

#Preview {
    ContentView()
}
