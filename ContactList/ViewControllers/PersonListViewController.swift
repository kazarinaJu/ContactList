//
//  PersonListViewController.swift
//  ContactList
//
//  Created by Юлия Ястребова on 18.04.2023.
//

import UIKit

final class PersonsListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


//MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    
}

//MARK: - UITableViewDataSource
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 0
    }
}
