//
//  BrandItemView.swift
//  TouchDown
//
//  Created by Wajd on 05/09/2025.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - PROPRTIES
    let brand: Brand
    
    //MARK: - BODY
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1)
            )
    }
}


//MARK: - PREVIEW
#Preview {
    BrandItemView(brand: brands[0])
}
