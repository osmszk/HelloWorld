//
//  HomeViewController.swift
//  HelloWorld
//
//  Created by Osamu Suzuki on 2021/04/14.
//

import UIKit

class HomeViewController: UIViewController {

    private var geetings: [Greeting] = [
        Greeting(hello: "Hello", goodMorning: "Good morning"),
        Greeting(hello: "Hi!", goodMorning: "Morning"),
        Greeting(hello: "こんにちは", goodMorning: "おはよう")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        geetings.append(Greeting(hello: "こんには！", goodMorning: "おはよ！"))
    }


}

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return geetings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "helloCell") else {
            return UITableViewCell()
        }
        cell.backgroundColor = .blue
        let greeting: Greeting = geetings[indexPath.row]
        cell.textLabel?.text = "\(greeting.hello) | \(greeting.goodMorning)"
        cell.textLabel?.textColor = .white
        return cell
    }
}

