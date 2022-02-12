//
//  Data.swift
//  TableTestApp
//
//  Created by Valya on 11.02.22.
//

import Foundation

final class Data {

    static var names = ["James", "Richard", "Joseph",
                 "William", "Charles", "Christopher",
                 "Michael", "Daniel", "Matthew",
                 "Anthony", "Mark", "Lucas",
                 "Oliver", "Henry"]
    
    static var surnames = ["Walker", "Perez", "Thompson",
                    "White", "Harris", "Sanchez",
                    "Clark", "Ramirez", "Lewis",
                    "Robinson", "Young", "Allen",
                    "King", "Wright"]
    
    static var phones = ["+375(44) 279-56-48", "+375(44) 367-25-84", "+375(44) 834-11-81",
                  "+375(44) 828-54-51", "+375(44) 279-56-48", "+375(44) 113-52-14",
                  "+375(44) 719-81-00", "+375(44) 223-18-18", "+375(44) 919-71-98",
                  "+375(44) 134-11-96", "+375(44) 116-13-25", "+375(44) 911-81-53",
                  "+375(44) 791-58-11", "+375(44) 139-14-13"]
    
    static var persons = PersonService.getRandomPersons()
    
}
