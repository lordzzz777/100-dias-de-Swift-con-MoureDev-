//
//  User.swift
//  Networking
//
//

import Foundation

//{
//   "code":200,
//   "meta":null,
//   "data":{
//      "id":123,
//      "name":"Aatreya Agarwal",
//      "email":"agarwal_aatreya@simonis-aufderhar.name",
//      "gender":"Male",
//      "status":"Inactive",
//      "created_at":"2020-10-10T03:50:06.151+05:30",
//      "updated_at":"2020-10-10T03:50:06.151+05:30"
//   }
//}

struct UserResponse: Decodable {
    
    let code: Int?
    let meta: Meta?
    let data: User?
    
}

struct User: Decodable {
    
    let id: Int?
    let name: String?
    let email: String?
    let gender: String?
    let status: String?
    let createdAt: Date?
    let updatedAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case email
        case gender
        case status
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
    
}

struct Meta: Decodable {
    
}
