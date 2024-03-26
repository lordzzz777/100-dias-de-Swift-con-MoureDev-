//
//  User.swift
//  Networking
//
//  Created by Esteban Perez Castillejo on 25/3/24.
//
/*
 {
   "code": 200,
   "meta": null,
   "data": {
     "id": 6805319,
     "name": "Rev. Gati Varman",
     "email": "varman_rev_gati@jerde.example",
     "gender": "female",
     "status": "inactive"
   }
 }
 */



import Foundation

<<<<<<< Updated upstream
struct Users {
    
    let users: User?
}

struct User {
=======
struct Users: Decodable {
    let code: Int?
    let meta: Meta?
    let dataUser: User?
}

struct User: Decodable {
>>>>>>> Stashed changes
    
    let id: Int?
    let name: String?
    let email: String?
    let gender: String?
    let status: String?
    
<<<<<<< Updated upstream
=======
    enum CodingKeys: String, CodingKey {
        
        case id
        case name
        case email
        case gender
        case status
    }
    
}

struct Meta: Decodable{
    
>>>>>>> Stashed changes
}
