//
//  PersonsLisstTableViewController.swift
//  randomNameListAppHW2.7
//
//  Created by Macbook on 10.06.2020.
//  Copyright © 2020 Igor Simonov. All rights reserved.
//

import UIKit

class PersonsLisstTableViewController: UITableViewController {

    let personList = Person.personInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Person", for: indexPath)

        cell.textLabel?.text = personList[indexPath.row].fullName

        return cell
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let detailedVC = segue.destination as! DetailedViewController
        detailedVC.personInfo = personList[indexPath.row]
        
    }
}
