//
//  PersonListViewController.swift
//  ContactList
//
//  Created by Юлия Ястребова on 18.04.2023.
//

import UIKit

final class PersonsListViewController: UITableViewController {
    
    private var contactList = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

//MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = contactList[indexPath.row]
        let personVC = segue.destination as? PersonInfoViewController
        personVC?.person = person
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
    }
}
    

    
//MARK: - UITableViewDataSource
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            contactList.count
        }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
            var content = cell.defaultContentConfiguration()
            let person = contactList[indexPath.row]
            content.text = person.fullName
            cell.contentConfiguration = content
            return cell
        }
}

// MARK: - UITableViewDelegate
extension PersonsListViewController {
    
}
