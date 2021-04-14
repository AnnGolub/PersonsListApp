//
//  SecondPersonsListViewController.swift
//  PersonsListApp
//
//  Created by Анна Голубева on 13.04.2021.
//

import UIKit

class SecondPersonsListViewController: UITableViewController {
    
    var persons: [Person]! {
        getPersonsFromMain()
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoContact", for: indexPath)
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = persons[indexPath.section].phoneNumber
            cell.imageView?.image = UIImage(systemName: "phone")
        case 1:
            cell.textLabel?.text = persons[indexPath.section].email
            cell.imageView?.image = UIImage(systemName: "mail")
        default:
            break
        }
        return cell
    }
    
    // MARK: - Private methods
    private func getPersonsFromMain() -> [Person] {
        let personsListVC = tabBarController?.viewControllers?.first as! PersonsListViewController
        
        return personsListVC.personsList
    }
}
