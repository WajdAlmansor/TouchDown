//
//  ContentView.swift
//  TouchDown
//
//  Created by Wajd on 04/09/2025.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    
    
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
            NavigationBarView()
                .padding(.horizontal, 15)
                .padding(.bottom)
                .background(.white)
                .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 0) {
                    FeaturedTabView()
                        .frame(height: 250)
                        .padding(.vertical, 20)
                    
                    CategoryGridView()
                        .padding(.top,20)
                        .padding(.bottom,20)
                    
                    TitleView(title: "Helmets")
                    
                    LazyVGrid(columns: gridLayout, spacing: 15) {
                        ForEach(products){product in
                            ProductItemView(product: product)
                        }//end loop
                    }//end lazygrid
                    .padding(15)
                    .padding(.bottom,20)
                    
                    TitleView(title: "Brands")
                    
                    BrandGridView()
                        .padding(.bottom,20)
                    
                    FooterView()
                        .padding(.horizontal)
                }//end vstack
            })//end scroll
        }//end vstack
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    }
}

//MARK: - PREVIEW
#Preview {
    ContentView()
}
