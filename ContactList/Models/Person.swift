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
    
    static func getPersons() -> [Person] {
        let dataStore = DataStore()
        
        var indices = Array(0..<dataStore.names.count)
        indices.shuffle()
        
        let persons = indices.map{
            index in Person(
                name: dataStore.names[index],
                surname: dataStore.surnames[index],
                phone: dataStore.phones[index],
                email: dataStore.emails[index]
            )
        }
        return persons
    }
}
