//
//  File.swift
//  SwiftUITutorial
//
//  Created by Esteban Perez Castillejo on 1/4/24.
//

import Foundation
import SwiftUI

struct Programmers {
    var id: Int
    var name: String
    var lenguages: String
    var avatar: Image
}

let programer = [
    Programmers(id: 0, name: "Raul", lenguages: "Swift", avatar: Image(systemName: "person.fill")),
    Programmers(id: 1, name: "Rick", lenguages: "Kotlin", avatar: Image(systemName: "person.fill")),
    Programmers(id: 2, name: "Moure", lenguages: "Swift, Kotlin y Python", avatar: Image(systemName: "person.fill")),
    Programmers(id: 3, name: "Esteban", lenguages: "Swift", avatar: Image( "cover2"))
]
