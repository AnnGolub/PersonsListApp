//
//  PersonDetailsViewController.swift
//  PersonsListApp
//
//  Created by Анна Голубева on 13.04.2021.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var mobileLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = person.fullName
        mobileLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
    }

}
