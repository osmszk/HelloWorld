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
    
    @IBAction func didPushPresentCodeButton(_ sender: Any) {
        print("didPushPresentCodeButton")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let codeViewController = storyboard.instantiateViewController(withIdentifier: "code") as? CodeViewController {
            codeViewController.modalPresentationStyle = .fullScreen
            codeViewController.modalTransitionStyle = .flipHorizontal
            codeViewController.close = { [weak self] in
                self?.dismiss(animated: true)
            }
            self.present(codeViewController, animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSegueViewController" {
            if let segueViewController = segue.destination as? SegueViewController {
                segueViewController.close = { [weak self] in
                    self?.dismiss(animated: true)
                }
            }
        }
    }
    


}

