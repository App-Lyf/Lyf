
import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        ZStack {
            
            ZStack {
                
                Image("fundo")
                    .resizable()
                
                Image("lyf")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 280)
                    .padding(.bottom, 390)
                
                VStack {
                    ZStack {
                        Color.clear
                            .glassEffect(.clear.interactive())
                            .frame(width: 150, height: 150) // tamanho do efeito
                            .clipShape(RoundedRectangle(cornerRadius: 20))

                       
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                    }
                }
                .padding(.bottom, 90)
                
                
                
                Image("textLogin")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .padding(.top, 285)
                
                Image("flor")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .offset(x: 130, y: 325)
                
                Button(action: {
                    print("Botão Pressionado")
                }) {
                    HStack(spacing: 10) { // imagem antes do texto
                        Image(systemName: "applelogo")
                            .foregroundColor(.white)
                            .font(.system(size: 20))

                        Text("Continue com Apple")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                    }
                    .frame(width: 350, height: 45)
                    .background(Color(hex: "FF6100")) // cor hex laranja
                    .glassEffect(.clear.interactive())
                    .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                }
                .buttonStyle(NoPressOpacityStyle()) // sem transparência ao pressionar
                .offset(y: 250)
                
                
                HStack {
                    Button(action: {
                        print("Botão Google Pressionado")
                    }) {
                        HStack(spacing: 10) {
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 23)
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                            
                            Text("Google")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundStyle(.white)
                        }
                        .frame(width: 170, height: 45)
                        .glassEffect(.clear.interactive())
                        .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                    }
                    .buttonStyle(NoPressOpacityStyle())
                    .offset(y: 300)


                    NavigationLink(destination: Email()) {
                        HStack(spacing: 10) {
                            Image(systemName: "envelope.fill") // símbolo de email
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                            
                            Text("Email")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundStyle(.white)
                        }
                        .frame(width: 170, height: 45)
                        .glassEffect(.clear.interactive())
                        .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                        .contentShape(Rectangle())
                    }
                    .buttonStyle(NoPressOpacityStyle())
                    .offset(y: 300)
                    
                }
                .offset(y: 10)
                
                HStack {
                    
                    Text("Não tem conta?")
                        .font(.system(size: 16))
                        .foregroundStyle(.white)
                    
                    NavigationLink(destination: Cadastro()) {
                                     Text("Crie sua conta")
                                         .font(.system(size: 16, weight: .bold))
                                         .foregroundStyle(Color(hex: "FF6100"))
                                 }
                    
                }
                .offset(y:380)
                
            }
                
            }
        .ignoresSafeArea()
        

        }
    }

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
