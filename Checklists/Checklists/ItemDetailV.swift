//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Maxim Kholmansky on 15/11/2017.
//  Copyright © 2017 Maxim Kholmansky. All rights reserved.
//

import UIKit

protocol AddItemViewControllerDelegate: class {
	func addItemViewControllerDidCancel(_ controller: ItemDetailV)
	func addItemViewController(_ controller: ItemDetailV, didfinishAdding item: ChecklistItem)
    func addItemViewController(_ controller: ItemDetailV, didfinishEditing item: ChecklistItem)
}

class ItemDetailV: UITableViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    @IBOutlet weak var cancelBarButton: UIBarButtonItem!
    var itemToEdit: ChecklistItem?
	
	weak var delegate: AddItemViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        
        if let item = itemToEdit{
            title = "Edit Item"
            textField.text = item.text
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        textField.becomeFirstResponder()
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return false
//    }
    
    @IBAction func done(_ sender: Any) {
        if let itemToEdit = itemToEdit {
            itemToEdit.text = textField.text!
            delegate?.addItemViewController(self, didfinishEditing: itemToEdit)
        } else {
            let item = ChecklistItem()
            item.text = textField.text!
            item.checked = false
            
            delegate?.addItemViewController(self, didfinishAdding: item)
        }
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
