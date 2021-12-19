//
//  Person.swift
//  UserApp
//
//  Created by Дина on 19.12.2021.
//

import Metal

struct User {
    var username: String
    var password: String
    var age: String
    var hobby: String
    
    static func getPerson() -> User {
    User(
        username: "Dina Sultanova",
        password: "123",
        age: "29",
        hobby: "Table games, Instagram blogging")
    }
}

