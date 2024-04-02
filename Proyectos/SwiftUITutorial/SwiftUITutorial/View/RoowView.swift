//
//  RoowView.swift
//  SwiftUITutorial
//
//  Created by Esteban Perez Castillejo on 1/4/24.
//

import SwiftUI

struct RoowView: View {
    var programmers: Programmer
    var body: some View {
        HStack {
            programmers.avatar
                .resizable()
                .frame(width: 50,height: 50)
                .background(Color.gray)
                .clipShape(Circle())
                .padding(10)
            VStack(alignment: .leading){
                Text(programmers.name).font(.title).bold()
                Text(programmers.lenguages).font(.callout)
                
            }
            Spacer()
            if programmers.favorite{
                Image(systemName: "star.fill").foregroundStyle(.yellow)
                    
            }else{
                Image(systemName: "star.fill").foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    RoowView(programmers: Programmer(
        id: 1,
        name: "Esteaban",
        lenguages: "Swift",
        avatar: Image("cover2"), favorite: true))
     .previewLayout(.fixed(width: 400, height: 60))
    
}
