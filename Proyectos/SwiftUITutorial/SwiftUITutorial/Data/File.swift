//
//  File.swift
//  SwiftUITutorial
//
//  Created by Esteban Perez Castillejo on 1/4/24.
//

import Foundation
import SwiftUI
import Observation

struct Programmer {
    var id: Int
    var name: String
    var lenguages: String
    var avatar: Image
    var favorite: Bool
}

@Observable
class ProgrammersModelData{
    var programers = [
        Programmer(id: 0, name: "Raul", lenguages: "Swift", avatar: Image(systemName: "person.fill"), favorite: true),
        Programmer(id: 1, name: "Rick", lenguages: "Kotlin", avatar: Image(systemName: "person.fill"), favorite: false),
        Programmer(id: 2, name: "Moure", lenguages: "Swift, Kotlin y Python", avatar: Image(systemName: "person.fill"), favorite: false),
        Programmer(id: 3, name: "Esteban", lenguages: "Swift", avatar: Image( "cover2"), favorite: true)
    ]
}
