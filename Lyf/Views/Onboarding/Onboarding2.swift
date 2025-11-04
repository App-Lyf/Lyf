//
//  Onboarding2.swift
//  Lyf
//
//  Created by paaaulo santos on 20/09/25.
//

import SwiftUI

struct Onboarding2: View {
    var body: some View {
        ZStack {
            Color(hex: "0C0C0B")
                .ignoresSafeArea()
            
            VStack(spacing: 24) {
                Image("on2")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 280)
                
                Image("textOn2")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .padding(.bottom, 30)
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

struct Onboarding2_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2()
    }
}
