//
//  ViewController.swift
//  Checklists
//
//  Created by Maxim Kholmansky on 13/11/2017.
//  Copyright © 2017 Maxim Kholmansky. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath){
            if cell.accessoryType == .none{
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        let label = cell.viewWithTag(10) as! UILabel
        label.text = "Hello"
        if indexPath.row % 5 == 0 {
            label.text = "1"
        } else if indexPath.row % 5 == 1 {
            label.text = "2"
        } else if indexPath.row % 5 == 2 {
            label.text = "3"
        } else if indexPath.row % 5 == 3 {
            label.text = "4"
        } else if indexPath.row % 5 == 4 {
            label.text = "5"
        }
        return cell
    }


}

