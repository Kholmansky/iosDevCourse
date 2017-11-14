//
//  ViewController.swift
//  Checklists
//
//  Created by Maxim Kholmansky on 13/11/2017.
//  Copyright © 2017 Maxim Kholmansky. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    var row0Item: ChecklistItem
    var row1Item: ChecklistItem
    var row2Item: ChecklistItem
    var row3Item: ChecklistItem
    var row4Item: ChecklistItem
    var row5Item: ChecklistItem
    var row6Item: ChecklistItem
    var row7Item: ChecklistItem
    
    var items: [ChecklistItem]
    
    required init?(coder aDecoder: NSCoder) {
        
        items = [ChecklistItem]()
        
        row0Item = ChecklistItem()
        row0Item.text = "1111"
        row0Item.checked = false
        items.append(row0Item)
        
        row1Item = ChecklistItem()
        row1Item.text = "222"
        row1Item.checked = false
        items.append(row1Item)
        
        row2Item = ChecklistItem()
        row2Item.text = "3333"
        row2Item.checked = false
        items.append(row2Item)
        
        row3Item = ChecklistItem()
        row3Item.text = "4444"
        row3Item.checked = false
        items.append(row3Item)
        
        row4Item = ChecklistItem()
        row4Item.text = "5555"
        row4Item.checked = false
        items.append(row4Item)
        
        row5Item = ChecklistItem()
        row5Item.text = "6666"
        row5Item.checked = false
        items.append(row5Item)
        
        row6Item = ChecklistItem()
        row6Item.text = "7777"
        row6Item.checked = false
        items.append(row6Item)
        
        row7Item = ChecklistItem()
        row7Item.text = "8888"
        row7Item.checked = false
        items.append(row7Item)
        
        super.init(coder: aDecoder)
    }
	

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		if let cell = tableView.cellForRow(at: indexPath){
            
            let item = items[indexPath.row]
            item.checked = !item.checked
            
			configureCheckmark(for: cell, at: indexPath)
		}
		
		tableView.deselectRow(at: indexPath, animated: true)
	}
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        let label = cell.viewWithTag(10) as! UILabel
        
        let item = items[indexPath.row]
        label.text = item.text
        
		configureCheckmark(for: cell, at: indexPath)
        return cell
    }
	
	func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
        
        let item = items[indexPath.row]
        if item.checked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
	}
}

