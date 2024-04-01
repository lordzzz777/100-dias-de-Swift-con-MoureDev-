//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by Esteban Perez Castillejo on 1/4/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationStack{
            List(programer, id: \.id) { item in
                NavigationLink(destination: DetailView(programmer: item)){
                    RoowView(programmers: item)
                }
            }
            .navigationTitle("Programadores")
        }
    }
}

#Preview {
    ListView()
}
