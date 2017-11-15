//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Maxim Kholmansky on 15/11/2017.
//  Copyright © 2017 Maxim Kholmansky. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
    }
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func cancel(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
