//
//  EnviromentView.swift
//  SwiftUITutorial
//
//  Created by Esteban Perez Castillejo on 3/4/24.
//

import SwiftUI

struct EnviromentView: View {
    @EnvironmentObject var user: UserData
    var body: some View {
        Text(user.name)
    }
}

#Preview {
    EnviromentView()
        .environmentObject(UserData())
}
