//
//  Person.swift
//  ContactList
//
//  Created by Юлия Ястребова on 18.04.2023.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        let dataStore = DataStore()
        let nameIndex = Int.random(in: 0..<dataStore.names.count)
        let surnameIndex = Int.random(in: 0..<dataStore.surnames.count)
        let phoneIndex = Int.random(in: 0..<dataStore.phones.count)
        let emailIndex = Int.random(in: 0..<dataStore.emails.count)
        
        return Person(
            name: dataStore.names[nameIndex],
            surname: dataStore.surnames[surnameIndex],
            phone: dataStore.phones[phoneIndex],
            email: dataStore.emails[emailIndex]
        )
    }
}
