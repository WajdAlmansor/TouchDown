//
//  NavigationBarDetailView.swift
//  TouchDown
//
//  Created by Wajd on 06/09/2025.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack {
            Button {
                withAnimation(.easeIn) {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
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
        .environmentObject(Shop())
        .background(.gray)
}
