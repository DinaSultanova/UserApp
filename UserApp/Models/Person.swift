//
//  Person.swift
//  UserApp
//
//  Created by Дина on 19.12.2021.
//

import Metal

class User {
    var username: String
    var password: String
    var age: String
    
    init(
        username: String,
        password: String
    ){
        self.username = username
        self.password = password
    }
    
    static func getPerson() -> String {
           }
}
