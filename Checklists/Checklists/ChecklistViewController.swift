//
//  ViewController.swift
//  Checklists
//
//  Created by Maxim Kholmansky on 13/11/2017.
//  Copyright © 2017 Maxim Kholmansky. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
	
	let row0Texet = "1111"
	let row1Texet = "2222"
	let row2Texet = "3333"
	let row3Texet = "4444"
	let row4Texet = "5555"
	
	var row0Checked = false
	var row1Checked = false
	var row2Checked = false
	var row3Checked = false
	var row4Checked = false
	

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
				row0Checked = !row0Checked
			} else if indexPath.row == 1 {
				row1Checked = !row1Checked
			} else if indexPath.row == 2 {
				row2Checked = !row2Checked
			} else if indexPath.row == 3 {
				row3Checked = !row3Checked
			} else if indexPath.row == 4 {
				row4Checked = !row4Checked
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
            label.text = row0Texet
        } else if indexPath.row % 5 == 1 {
            label.text = row1Texet
        } else if indexPath.row % 5 == 2 {
            label.text = row2Texet
        } else if indexPath.row % 5 == 3 {
            label.text = row3Texet
        } else if indexPath.row % 5 == 4 {
            label.text = row4Texet
        }
		configureCheckmark(for: cell, at: indexPath)
        return cell
    }
	
	func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
		var isChecked = false
		if indexPath.row == 0 {
			isChecked = row0Checked
		} else if indexPath.row == 1 {
			isChecked = row1Checked
		} else if indexPath.row == 2 {
			isChecked = row2Checked
		} else if indexPath.row == 3 {
			isChecked = row3Checked
		} else if indexPath.row == 4 {
			isChecked = row4Checked
		}
		
		if isChecked {
			cell.accessoryType = .checkmark
		} else {
			cell.accessoryType = .none
		}
	}


}

