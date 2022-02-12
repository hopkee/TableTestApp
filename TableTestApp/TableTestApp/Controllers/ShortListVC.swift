//
//  ShortListVC.swift
//  TableTestApp
//
//  Created by Valya on 12.02.22.
//

import UIKit

final class ShortListVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private let persons = Data.persons

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = persons[indexPath.row].firstName + " " + persons[indexPath.row].secondName

        return cell
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow,
           let destVC = segue.destination as? DetailedPersonInfoVC {
            destVC.firstName = persons[indexPath.row].firstName
            destVC.secondName = persons[indexPath.row].secondName
            destVC.email = persons[indexPath.row].email
            destVC.phone = persons[indexPath.row].phone
        }
    }

}
