//
//  ViewController.swift
//  Homepwner
//
//  Created by Joachim Goennheimer on 25.05.20.
//  Copyright © 2020 Joachim Goennheimer. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController {

    var itemStore: ItemStore!

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")
        let item = itemStore.allItems[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$ \(item.valueInDollars)"
        
        return cell
    }
}

