//
//  PersonsListViewController.swift
//  PersonsListApp
//
//  Created by Анна Голубева on 13.04.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var personsList = Person.getPersonsList()
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactPerson", for: indexPath)
        let persons = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = persons.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailsVC = segue.destination as? PersonDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let persons = personsList[indexPath.row]
        personDetailsVC.person = persons
    }
}
