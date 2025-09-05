//
//  CategoryItemView.swift
//  TouchDown
//
//  Created by Wajd on 05/09/2025.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: - PROPRITES
    let category: Category
    
    
    //MARK: - BODY
    var body: some View {
        Button {
            
        } label:{
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }//end hstack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray,lineWidth: 1)
            )
          //  .padding()
        }//end button
    }
}



//MARK: - PREVIEW
#Preview {
    CategoryItemView(category: categories[0])
}
