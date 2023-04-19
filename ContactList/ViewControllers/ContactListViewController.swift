//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Юлия Ястребова on 19.04.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private var contactList = Person.getPersons()
}

// MARK: - UITableViewDataSource
extension ContactListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = contactList[indexPath.section]
        
        switch indexPath.row {
        case 0:
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
    
        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = contactList[section]
        return person.fullName
    }
}
    

