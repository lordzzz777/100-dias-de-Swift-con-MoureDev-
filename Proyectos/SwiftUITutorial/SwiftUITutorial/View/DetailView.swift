//
//  DetailView.swift
//  SwiftUITutorial
//
//  Created by Esteban Perez Castillejo on 1/4/24.
//

import SwiftUI

struct DetailView: View {
    var programmer: Programmers
    var body: some View {
        VStack {
            programmer.avatar
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(color: .blue, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text(programmer.name).font(.largeTitle)
            Text(programmer.lenguages).font(.title)
            Spacer()
        }
    }
}

#Preview {
    DetailView(programmer: Programmers(
        id: 1,
        name: "Esteaban",
        lenguages: "Swift",
        avatar: Image("cover2")))
}
