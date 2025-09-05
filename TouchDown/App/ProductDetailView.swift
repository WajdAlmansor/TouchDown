//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Wajd on 06/09/2025.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //HEADER
            HeaderDetailView()
                .padding(.horizontal)
                .padding(.top, 20)
            
            //DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            //DETAIL BOTTOM PART
            VStack(alignment: .center) {
                //RATINGS + SIZES
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                //DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }//end scroll
                
                //QUANTITY + FAVOURITE
                QuantityFavouriteDetailView()
                    .padding(.vertical, 25)
                
                //ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
                Spacer()
            }//end vstack
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape()).padding(.top, -105))
            
        }//end vstack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
