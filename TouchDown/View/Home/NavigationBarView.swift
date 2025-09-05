//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by Wajd on 04/09/2025.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPRTIES
    @State private var isAnimating: Bool = false
    
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                
            }){
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }//end button
            .padding()
            
            Spacer()
            
            logoView()
                .opacity(isAnimating ? 1 : 0)
                .offset(x: 0 , y: isAnimating ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimating.toggle()
                    }
                })
            
            
            Spacer()
            
            Button(action: {
                
            }){
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.black)
                
                Circle()
                    .fill(.red)
                    .frame(width: 14, height: 14 , alignment: .center)
                    .offset(x: -20, y: -10)
            }//end button
            //.padding()

        }//end hstack
    }
}

//MARK: - PREVIEW
#Preview {
    NavigationBarView()
}
