//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Esteban Perez Castillejo on 30/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Hola y alos 100 dias")
                .font(.title)
                .foregroundStyle(Color.red)
                .padding()
                .background(Color.gray)
            Spacer()
            ZStack{
                Text("")
                    .frame(maxWidth: .infinity, 
                           maxHeight: .infinity)
                    .background(Color.gray)
                    .padding()
                Text("")
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity)
                    .background(Color.green)
                    .padding(40)
                Text("")
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity)
                    .background(Color.red)
                    .padding(60)
                Text("")
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity)
                    .background(Color.blue)
                    .padding(80 )
            }
            HStack{
                Text("Este es el grupo de estudio ...")
                    .padding()
                    .background(Color.gray)
                Spacer()
                Text("de los 100 días de Swift ...")
                    .padding()
                    .background(Color.gray)
            }
            Text("6")
            Text("7")
            Text("8")
            Text("9")
            Text("10")
            // en la nueva version de SwiftUI,
            // los Stack soporta muchas mas vistas
            // dentro del Stack  
     
        }.background(Color.yellow)
           
    }
}

#Preview {
    ContentView()
}
