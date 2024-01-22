import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "globe")
            .font(.system(size: 200))
            .distortionShader()
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
