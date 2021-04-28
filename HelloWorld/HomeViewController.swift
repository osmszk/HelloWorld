//
//  HomeViewController.swift
//  HelloWorld
//
//  Created by Osamu Suzuki on 2021/04/14.
//

import UIKit

class HomeViewController: UIViewController {

    private var sampleView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didPushAddButton(_ sender: Any) {
        if sampleView == nil {
            let contentView = UIView(frame: CGRect(x: 60, y: 60, width: 320, height: 400))
            contentView.backgroundColor = .blue
            
            let label = UILabel(frame: CGRect(x: 30, y: 30, width: 120, height: 40))
            label.text = "osmyyy" // osmyyy_
            label.textColor = .white
            label.backgroundColor = .systemPink
            contentView.addSubview(label)
            
            self.view.addSubview(contentView)
            
            sampleView = contentView
            contentView.alpha = 0
            
            UIView.animate(withDuration: 1) {
                contentView.alpha = 1
            }
        }
    }
    
    @IBAction func didPushRemoveButton(_ sender: Any) {
        sampleView?.removeFromSuperview()
        sampleView = nil
    }
}

