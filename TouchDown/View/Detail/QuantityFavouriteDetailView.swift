//
//  QuantityFavouriteDetailView.swift
//  TouchDown
//
//  Created by Wajd on 06/09/2025.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if counter > 0 {
                    counter -= 1
                }
            }label: {
                Image(systemName: "minus.circle")
            }//end button
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button {
                if counter < 100 {
                    counter += 1
                }
            }label: {
                Image(systemName: "plus.circle")
            }//end button
            
            Spacer()
            
            Button {
                
            }label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }//end button
        }//end hstack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

#Preview {
    QuantityFavouriteDetailView()
}
