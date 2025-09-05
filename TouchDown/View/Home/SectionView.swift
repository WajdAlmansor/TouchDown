//
//  SeactionView.swift
//  TouchDown
//
//  Created by Wajd on 05/09/2025.
//

import SwiftUI

struct SectionView: View {
    //MARK: - PROPRTIES
    @State var rotateClockwise: Bool
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }//end vstack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}


//MARK: - PREVIEW
#Preview {
    SectionView(rotateClockwise: false)
}
