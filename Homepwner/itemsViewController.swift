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
    
    struct SectionObject {
        var sectionName: String
        var sectionItems: [Item]!
    }
    
    var tableObjectsArray = [SectionObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableObjectsArray = [SectionObject(sectionName: "Cheap Items", sectionItems: itemStore.cheapItems),
                             SectionObject(sectionName: "Expensive Items", sectionItems: itemStore.expensiveItems)]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableObjectsArray[section].sectionItems.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return tableObjectsArray.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return tableObjectsArray[section].sectionName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        
        let item = tableObjectsArray[indexPath.section].sectionItems[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$ \(item.valueInDollars)"
        
        return cell
    }
}

