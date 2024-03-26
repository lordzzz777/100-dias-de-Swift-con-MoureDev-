//
//  NetworkingProvider.swift
//  Networking
//
//  Created by Esteban Perez Castillejo on 25/3/24.
//

import Foundation
import Alamofire

final class NetworkingProvider{
    
    static let shared = NetworkingProvider()
    
    private let kBaseUrl = "https://gorest.co.in/public-api/"
    private let kStatusOk = 200...299
    
    func getUser(id: Int){
        let url = "\(kBaseUrl)users/\(id)"
        AF.request(url,method: .get).validate(statusCode: kStatusOk).responseDecodable (of: Users.self){ response in
            if let user = response.value?.dataUser{
                print(user) 
            }else{
                print(response.error ?? "No error" )
            }
        }
    }
}
