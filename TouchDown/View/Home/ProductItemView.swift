//
//  ProductItemView.swift
//  TouchDown
//
//  Created by Wajd on 05/09/2025.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - PROPRTIES
    let product: Product
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            //PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//end zstack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            //NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            //PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }//end vstack
       // .padding()
    }
}


//MARK: - PREVIEW
#Preview {
    ProductItemView(product: products[0])
}
