//
//  DetailView.swift
//  SwiftUITutorial
//
//  Created by Esteban Perez Castillejo on 1/4/24.
//

import SwiftUI

struct DetailView: View {
    
    var programmers: Programmer
    @Binding var favorite: Bool
    var body: some View {
        VStack {
            programmers.avatar
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(color: .blue, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            HStack {
                Text(programmers.name).font(.largeTitle)
                Button(action: {
                    favorite.toggle()
                }, label: {
                    Image(systemName: favorite ? "star.fill" : "star").foregroundStyle(favorite ?  .yellow : .gray)
                })
            }
            Text(programmers.lenguages).font(.title)
            Spacer()
        }
    }
}

#Preview {
    DetailView(programmers: Programmer(
        id: 1,
        name: "Esteaban",
        lenguages: "Swift",
        avatar: Image("cover2"), favorite: true), favorite: .constant(true))
}
