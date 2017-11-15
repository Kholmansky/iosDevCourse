//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Maxim Kholmansky on 15/11/2017.
//  Copyright © 2017 Maxim Kholmansky. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    @IBOutlet weak var cancelBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {

        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
    }
    override func viewWillAppear(_ animated: Bool) {
        textField.becomeFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        print("Contents of textField: \(textField.text!)")
        
    }
    
    @IBAction func cancel(_ sender: Any) {
        navigationController?.popViewController(animated: true)
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
