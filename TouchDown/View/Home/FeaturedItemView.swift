//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by Wajd on 05/09/2025.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - PROPERTIES
    
    let player: Player
    
    //MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}


//MARK: - PREVIEW
#Preview {
    FeaturedItemView(player: players[0])
}
