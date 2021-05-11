//
//  HomeViewController.swift
//  HelloWorld
//
//  Created by Osamu Suzuki on 2021/04/14.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: "forest")
    }


}

