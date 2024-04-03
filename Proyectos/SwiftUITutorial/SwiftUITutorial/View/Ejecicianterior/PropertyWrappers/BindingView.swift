//
//  BindingView.swift
//  SwiftUITutorial
//
//  Created by Esteban Perez Castillejo on 3/4/24.
//

import SwiftUI

struct BindingView: View {
    @Binding var valor: Int
    @ObservedObject var user: UserData
    @State private var selection: Int?
    
    var body: some View {
        VStack {
            Text("El valor actual es \(valor)").padding()
            Button(action: {
                valor += 2
            }, label: {
                Text("Suma 2")
                Image(systemName: "plus.fill")
            })
            Button(action: {
                user.name = "Pedro"
                user.age = 43
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
            
            NavigationLink(destination:
                           EnviromentView()
            , tag: 1 , selection: $selection, label: {
                Button("Ir a EnviromentView", action: {
                    selection = 1
                })
            })
        }
        
    }
}

#Preview {
    BindingView(valor: .constant(5), user: UserData())
        .environmentObject(UserData())
}
