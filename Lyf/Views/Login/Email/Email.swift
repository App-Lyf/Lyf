//
//  Email.swift
//  Lyf
//
//  Created by paaaulo santos on 26/09/25.
//

import SwiftUI

struct Email: View {
    var body: some View {
        ZStack {
            Color(hex: "0C0C0B")
                .ignoresSafeArea()
            
            
            
            Text("Email")
                .foregroundStyle(Color.white)
          
        }
    }
}



struct Email_Previews: PreviewProvider {
    static var previews: some View {
        Email()
    }
}
