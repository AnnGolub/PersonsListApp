//
//  Person.swift
//  PersonsListApp
//
//  Created by Анна Голубева on 13.04.2021.
//

struct Person {
    
    let firstName: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(surname)"
    }
}

extension Person {
    static func getPersonsList() -> [Person] {
        
        var persons: [Person] = []
        
        let dataManger = DataManager()
        
        let firstNames = dataManger.names.shuffled()
        let surnames = dataManger.surnames.shuffled()
        let emails = dataManger.emails.shuffled()
        let phoneNumbers = dataManger.phoneNumbers.shuffled()
        
        for index in 0..<firstNames.count {
            let person = Person(firstName: firstNames[index], surname: surnames[index], email: emails[index], phoneNumber: phoneNumbers[index])
            persons.append(person)
        }
        return persons
    }
}
