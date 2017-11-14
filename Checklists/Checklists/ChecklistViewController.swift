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
    
	let row0Texet = "1111"
	let row1Texet = "2222"
	let row2Texet = "3333"
	let row3Texet = "4444"
	let row4Texet = "5555"
	
	var row0Checked = false
	var row1Checked = false
	var row2Checked = true
	var row3Checked = false
	var row4Checked = true
    
    required init?(coder aDecoder: NSCoder) {
        row0Item = ChecklistItem()
        row0Item.text = "1111"
        row0Item.checked = false
        
        row1Item = ChecklistItem()
        row1Item.text = "222"
        row1Item.checked = false
        
        row2Item = ChecklistItem()
        row2Item.text = "3333"
        row2Item.checked = false
        
        row3Item = ChecklistItem()
        row3Item.text = "4444"
        row3Item.checked = false
        
        row4Item = ChecklistItem()
        row4Item.text = "5555"
        row4Item.checked = false
        
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
        return 5
    }
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		if let cell = tableView.cellForRow(at: indexPath){
			
			if indexPath.row == 0 {
                row0Item.checked = !row0Item.checked
			} else if indexPath.row == 1 {
                row1Item.checked = !row1Item.checked
			} else if indexPath.row == 2 {
                row2Item.checked = !row2Item.checked
			} else if indexPath.row == 3 {
                row3Item.checked = !row3Item.checked
			} else if indexPath.row == 4 {
                row4Item.checked = !row4Item.checked

			}
			configureCheckmark(for: cell, at: indexPath)
		}
		
		tableView.deselectRow(at: indexPath, animated: true)
	}
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        let label = cell.viewWithTag(10) as! UILabel
        label.text = "Hello"
        if indexPath.row % 5 == 0 {
            label.text = row0Item.text
        } else if indexPath.row % 5 == 1 {
            label.text = row1Item.text
        } else if indexPath.row % 5 == 2 {
            label.text = row2Item.text
        } else if indexPath.row % 5 == 3 {
            label.text = row3Item.text
        } else if indexPath.row % 5 == 4 {
            label.text = row4Item.text
        }
		configureCheckmark(for: cell, at: indexPath)
        return cell
    }
	
	func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
		var isChecked = false
		if indexPath.row == 0 {
			isChecked = row0Item.checked
		} else if indexPath.row == 1 {
			isChecked = row1Item.checked
		} else if indexPath.row == 2 {
			isChecked = row2Item.checked
		} else if indexPath.row == 3 {
			isChecked = row3Item.checked
		} else if indexPath.row == 4 {
			isChecked = row4Item.checked
		}
		
		if isChecked {
			cell.accessoryType = .checkmark
		} else {
			cell.accessoryType = .none
		}
	}


}

