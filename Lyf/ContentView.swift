import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    @State private var showSplash = true
    
    var body: some View {
        NavigationStack {
            ZStack {
                OnboardingContainer()
                
                if showSplash {
                    SplashView()
                        .transition(.opacity) // dissolver
                        .zIndex(1) // garante que fica em cima
                }
            }
            .ignoresSafeArea()
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation(.easeOut(duration: 1)) {
                        showSplash = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
