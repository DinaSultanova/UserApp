//
//  Person.swift
//  UserApp
//
//  Created by Дина on 19.12.2021.
//

import Metal

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
    User(
        login: "User",
        password: "Password",
        person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let image: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Dina", surname: "Sultanova", image: "DinaImage")
    }
}


