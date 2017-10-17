//
//  ViewController.swift
//  BullsEye
//
//  Created by Maxim Kholmansky on 17/10/2017.
//  Copyright © 2017 Maxim Kholmansky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue : Int = 0
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderMoved(_ slider: UISlider){
        print("The value of slider now is: \(slider.value)")
        currentValue = lroundf(slider.value)
    }
    
    @IBAction func showAlert(){
        let message = "The value of the slider is: \(currentValue)"
        let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }


}

