//
//  ContadorView.swift
//  SwiftUITutorial
//
//  Created by Esteban Perez Castillejo on 3/4/24.
//

import SwiftUI

class UserData: ObservableObject {
  @Published var name = "Esteban"
    @Published var age = 46
}

struct ContadorView: View {
    
    @State private var valor = 0
    @State private var selection: Int?
    @StateObject private var user = UserData()
    
    var body: some View {
        NavigationStack{
            VStack {
                Text("El valor actual es \(valor)").padding()
                Button(action: {
                    valor += 1
                }, label: {
                    Text("Suma 1")
                    Image(systemName: "plus.fill")
                })
                Text("minobre es \(user.name), y mi edad \(user.age)")
                Button(action: {
                    user.name = "Juan"
                    user.age = 34
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
                NavigationLink(destination:
                                BindingView(valor: $valor, user: user)
                , tag: 1 , selection: $selection, label: {
                    Button("Ir a BindingView", action: {
                        selection = 1
                    })
                })
            }.navigationTitle("StateView")
        }
    }
}

#Preview {
    ContadorView()
        .environmentObject(UserData())
}
