//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by Wajd on 05/09/2025.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories){ category in
                        CategoryItemView(category: category)
                    }
                }
            })//end grid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }//end scroll
    }
}

#Preview {
    CategoryGridView()
}
