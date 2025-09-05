//
//  TitleView.swift
//  TouchDown
//
//  Created by Wajd on 05/09/2025.
//

import SwiftUI

struct TitleView: View {
    //MARK: - PROPRTIES
    var title: String
    
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }//end hstack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}


//MARK: - PREVIEW
#Preview {
    TitleView(title: "Helmet")
}
