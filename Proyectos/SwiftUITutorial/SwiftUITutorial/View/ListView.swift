//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by Esteban Perez Castillejo on 1/4/24.
//

import SwiftUI

struct ListView: View {
    @State var programmersModelData: ProgrammersModelData
    @State private var showFavorites = false
    private var filterProgrammes:[Programmer]{
        return programmersModelData.programers.filter{ programers in
            return !showFavorites || programers.favorite
        }
    }
    var body: some View {
        NavigationStack{
            VStack{
                Toggle(isOn: $showFavorites, label: {
                    Text("Mostrar favoritos")
                }).padding()
                List(filterProgrammes, id: \.id) { item in
                    NavigationLink(destination: DetailView(programmers: item, favorite: $programmersModelData.programers[item.id].favorite)){
                        RoowView(programmers: item)
                    }
                }
                .navigationTitle("Programadores")
            }
        }
    }
}

#Preview {
    ListView(programmersModelData: .init())
}
