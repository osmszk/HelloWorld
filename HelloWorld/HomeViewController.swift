//
//  HomeViewController.swift
//  HelloWorld
//
//  Created by Osamu Suzuki on 2021/04/14.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didPushCodeButton(_ sender: Any) {
        print("didPushCodeButton")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let codeViewController = storyboard.instantiateViewController(withIdentifier: "code")
        self.navigationController?.pushViewController(codeViewController, animated: true)
    }
}

