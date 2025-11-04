//
//  SplashView.swift
//  Lyf
//
//  Created by paaaulo santos on 20/09/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        
        ZStack {
            Color(hex: "000000")
                .ignoresSafeArea()
            
            ZStack{
                
                VStack {
                    ZStack {
                        Color.clear
                            .glassEffect(.clear.interactive())
                            .frame(width: 120, height: 120) // tamanho do efeito
                            .clipShape(RoundedRectangle(cornerRadius: 20))

                       
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                    }
                }
                .padding(.bottom, 120)
                
                
            }
           
        }

    }
}




struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
