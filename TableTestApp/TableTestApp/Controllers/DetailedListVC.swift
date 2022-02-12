//
//  DetailedListVC.swift
//  TableTestApp
//
//  Created by Valya on 12.02.22.
//

import UIKit

final class DetailedListVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private let persons = Data.persons

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        if indexPath.row == 0 {
            cell.textLabel?.text = "  " + persons[indexPath.section].email
        } else {
            cell.textLabel?.text = "  " + persons[indexPath.section].phone
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].firstName + " " + persons[section].secondName
    }
    
}
