//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Maxim Kholmansky on 15/11/2017.
//  Copyright © 2017 Maxim Kholmansky. All rights reserved.
//

import UIKit

protocol AddItemViewControllerDelegate: class {
	func addItemViewControllerDidCancel(_ controller: AddItemViewController)
	func addItemViewController(_ controller: AddItemViewController, didfinishAdding item: ChecklistItem)
}

class AddItemViewController: UITableViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    @IBOutlet weak var cancelBarButton: UIBarButtonItem!
	
	weak var delegate: AddItemViewControllerDelegate?
    
    override func viewDidLoad() {

        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
    }
    override func viewWillAppear(_ animated: Bool) {
        textField.becomeFirstResponder()
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return false
//    }
    
    @IBAction func done(_ sender: Any) {
		let item = ChecklistItem()
		item.text = textField.text!
		item.checked = false
		
		delegate?.addItemViewController(self, didfinishAdding: <#T##ChecklistItem#>)
    }
    
    @IBAction func cancel(_ sender: Any) {
		delegate?.addItemViewControllerDidCancel(self)
    }
	
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let oldText = textField.text!
        let stringRange = Range(range, in: oldText)
        let newText = oldText.replacingCharacters(in: stringRange!, with: string)
        if newText.isEmpty{
            doneBarButton.isEnabled = false
        } else {
            doneBarButton.isEnabled = true
        }
        return true
    }
}
