//
//  ViewController.swift
//  HelloWorld
//
//  Created by Osamu Suzuki on 2021/04/14.
//

import UIKit
import PKHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        HUD.show(.progress)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
           HUD.flash(.success, delay: 1.0)
        }
    }


}

