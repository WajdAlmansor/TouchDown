//
//  BrandGridView.swift
//  TouchDown
//
//  Created by Wajd on 06/09/2025.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands){ brand in
                    BrandItemView(brand: brand)
                }
            }//end grid
            .frame(height: 200)
            .padding(15)
        }//end scroll
    }
}

#Preview {
    BrandGridView()
}
