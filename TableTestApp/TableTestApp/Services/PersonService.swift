//
//  PersonService.swift
//  TableTestApp
//
//  Created by Valya on 11.02.22.
//

import UIKit

final class PersonService: UIViewController {
    
    struct Person: Equatable {
        let firstName: String
        let secondName: String
        var email: String {
            (firstName + secondName + "@gmail.com").lowercased()
        }
        let phone: String
    }
    
    static func getRandomPersons() -> [Person] {
        
        var persons: [Person] = []
        
            for _ in 0...13 {
                let randomPerson = Person(firstName: Data.names[Int.random(in: 0...13)], secondName: Data.surnames[Int.random(in: 0...13)], phone: Data.phones[Int.random(in: 0...13)])
                 if !persons.contains(randomPerson) {
                    persons.append(randomPerson)
                }
            }
        
        return persons
        
    }
    
}
