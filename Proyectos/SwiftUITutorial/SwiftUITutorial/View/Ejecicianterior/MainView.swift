//
//  MainView.swift
//  SwiftUITutorial
//
//  Created by Esteban Perez Castillejo on 1/4/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView{
            VStack{
                MapaViewKit()
                    .frame(width: 400, height: 400)
                ImagenView().offset(y: -100)
                Divider()
                ContentView()
            }
        }
    }
}

#Preview {
    MainView()
}
