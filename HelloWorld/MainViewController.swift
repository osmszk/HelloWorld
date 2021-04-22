//
//  ViewController.swift
//  HelloWorld
//
//  Created by Osamu Suzuki on 2021/04/14.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var updateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = "Hello, オサミー"
        updateButton.setTitle("Update", for: .normal)
    }

    @IBAction func didPushButton(_ sender: Any) {
        print("didPushButton")
        textLabel.text = "Hello, osmyyy" // osmyyy_
    }
    
}

