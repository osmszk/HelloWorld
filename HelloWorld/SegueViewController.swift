//
//  SegueViewController.swift
//  HelloWorld
//
//  Created by Osamu Suzuki on 2021/04/26.
//

import UIKit

class SegueViewController: UIViewController {

    var close: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("deinit")
    }
    
    
    @IBAction func didPushCancelButton(_ sender: Any) {
        self.close?()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
