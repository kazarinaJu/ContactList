//
//  PersonViewController.swift
//  ContactList
//
//  Created by Юлия Ястребова on 19.04.2023.
//

import UIKit

final class PersonInfoViewController: UIViewController {
    
    @IBOutlet var personPhoneLabel: UILabel!
    @IBOutlet var personEmailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullName
        
        personPhoneLabel.text = "Phone: \(person.phone)"
        personEmailLabel.text = "Email: \(person.email)"
    }
}
