//
//  NavigationBarDetailView.swift
//  TouchDown
//
//  Created by Wajd on 06/09/2025.
//

import SwiftUI

struct NavigationBarDetailView: View {
    var body: some View {
        HStack {
            Button {
                
            }label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }//end button
            
            Spacer()
            
            Button {
                
            }label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }//end button
        }//end hstack
        //.padding()
    }
}

#Preview {
    NavigationBarDetailView()
        .background(.gray)
}
