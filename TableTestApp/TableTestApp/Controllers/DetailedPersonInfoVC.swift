//
//  DetailedPersonInfoVC.swift
//  TableTestApp
//
//  Created by Valya on 11.02.22.
//

import UIKit

final class DetailedPersonInfoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpData()
    }
    
    @IBOutlet weak private var emailLabel: UILabel!
    @IBOutlet weak private var phoneLabel: UILabel!
    
    var firstName: String?
    var secondName: String?
    var email: String?
    var phone: String?

    private func setUpData() {
        if let firstName = firstName,
           let secondName = secondName,
           let email = email,
           let phone = phone
        {
            emailLabel.text = "Email: " + email
            phoneLabel.text = "Phone: " + phone
            navigationItem.title = firstName + " " + secondName
        }
    }
    
}
