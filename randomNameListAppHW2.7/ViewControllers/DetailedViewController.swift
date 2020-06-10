//
//  DetailedViewController.swift
//  randomNameListAppHW2.7
//
//  Created by Macbook on 09.06.2020.
//  Copyright © 2020 Igor Simonov. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var personInfo: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = personInfo.fullName
        phoneNumberLabel.text = "phone: " + personInfo.phone
        emailLabel.text = "email: " + personInfo.email
    }
}
