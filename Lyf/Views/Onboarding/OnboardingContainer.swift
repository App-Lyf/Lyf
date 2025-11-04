import SwiftUI

struct OnboardingContainer: View {
    var body: some View {
        
        HStack {
            TabView {
                Onboarding1()
                    .ignoresSafeArea()
                    .tabItem {
                        Label("Bem vindo(a)", systemImage: "1.circle")
                    }
                
                Onboarding2()
                    .ignoresSafeArea()
                    .tabItem {
                        Label("Evolução", systemImage: "2.circle")
                    }
                
                Onboarding3()
                    .ignoresSafeArea()
                    .tabItem {
                        Label("Vamos lá", systemImage: "3.circle")
                    }
            }
            .tabViewStyle(DefaultTabViewStyle()) // agora usa barra inferior
            .accentColor(Color.orange)
            
        }
        
        
        
    }
}
