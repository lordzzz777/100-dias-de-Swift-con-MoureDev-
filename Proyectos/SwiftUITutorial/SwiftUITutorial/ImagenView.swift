//
//  ImagenView.swift
//  SwiftUITutorial
//
//  Created by Esteban Perez Castillejo on 31/3/24.
//

import SwiftUI

struct ImagenView: View {
    var body: some View {
        VStack {
            Image("cover2")
                .resizable()
                .frame(width: 300, height: 300)
                .background(Gradient(  colors: [Color.blue, Color.primary]))
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 4))
            .shadow(color: Color.green, radius: 15)
            .padding()
            
            Image(systemName: "gamecontroller")
                .resizable()
                .frame(width: 300, height: 300)
        }
    }
}

#Preview {
    ImagenView()
}
