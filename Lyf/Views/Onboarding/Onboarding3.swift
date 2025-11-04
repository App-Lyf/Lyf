//
//  Onboarding3.swift
//  Lyf
//
//  Created by paaaulo santos on 20/09/25.
//

//
//  Onboarding2.swift
//  Lyf
//
//  Created by paaaulo santos on 20/09/25.
//

import SwiftUI

struct Onboarding3: View {
    var body: some View {
        ZStack {
            Color(hex: "0C0C0B")
                .ignoresSafeArea()
            
            VStack(spacing: 24) {
                
                ZStack {
                    Image("on3")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 500)
                        .offset(x: 80, y: -60)
                    
                    Image("textOn3")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .padding(.top, 285)
                }
            }
            
            ZStack {
                Image("flor")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .offset(x: 130, y: 325)
                
                NavigationLink(destination: LoginView()) {
                    Text("Próximo")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundStyle(.white)
                        .frame(width: 308, height: 40)
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

struct Onboarding3_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3()
    }
}
