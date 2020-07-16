//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Admin on 16.07.2020.
//  Copyright © 2020 Ilnur Mugaev. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {

    let restaurantNames = [
           "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
           "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
           "Speak Easy", "Morris Pub", "Вкусные истории",
           "Классик", "Love&Life", "Шок", "Бочка"
       ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = restaurantNames[indexPath.row]
        
        return cell
    }
   
}
