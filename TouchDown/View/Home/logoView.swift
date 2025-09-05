//
//  logoView.swift
//  TouchDown
//
//  Created by Wajd on 05/09/2025.
//

import SwiftUI

struct logoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }//end hstack
    }
}

#Preview {
    logoView()
}
