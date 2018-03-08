//
//  TableViewController.swift
//  Parallax Header
//
//  Created by Maxim Dvortsov on 03.12.2017.
//  Copyright © 2017 Maxim Dvortsov. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = "This is row number \(indexPath.row + 1)"

        return cell
    }
    

}
