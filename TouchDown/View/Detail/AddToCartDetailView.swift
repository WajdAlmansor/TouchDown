//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by Wajd on 06/09/2025.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button {
            
        }label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }//end button
        .padding(15)
        .background(Color(
            red: shop.selectedProduct?.red ?? sampleProduct.red,
            green: shop.selectedProduct?.green ?? sampleProduct.green,
            blue: shop.selectedProduct?.blue ?? sampleProduct.blue
        ))
        .clipShape(.capsule)
    }
}

#Preview {
    AddToCartDetailView()
        .environmentObject(Shop())
}
