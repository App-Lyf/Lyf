import SwiftUI

struct Onboarding1: View {
    var body: some View {
        ZStack {
            Color(hex: "0C0C0B")
                .ignoresSafeArea()
            
            VStack(spacing: 24) {
                Image("on1")
                    .resizable()
                    .scaledToFit()
                
                Image("textOn1")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
            }
            
            ZStack {
                Image("flor")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .offset(x: 130, y: 325)
                
                NavigationLink(destination: LoginView()) {
                    Text("Pular")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundStyle(.white)
                        .frame(width: 307, height: 40)
                        .background(Color(hex: "FF6100").opacity(0.5))
                        .glassEffect(.clear.interactive())
                        .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                }
                .buttonStyle(NoPressOpacityStyle())
                .offset(y: 300)

               
            }
        }
    }
}

// Estilo que não altera opacidade no estado pressed
struct NoPressOpacityStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .opacity(1)           // não reduz opacidade
            .scaleEffect(1)       // não faz “shrink”
            .animation(.none, value: configuration.isPressed)
    }
}

struct Onboarding1_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding1()
    }
}
