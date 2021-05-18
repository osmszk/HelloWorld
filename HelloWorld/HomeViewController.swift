//
//  HomeViewController.swift
//  HelloWorld
//
//  Created by Osamu Suzuki on 2021/04/14.
//

import UIKit

class HomeViewController: UIViewController {

    let greetings: [String] = ["こんにちは",
                               "Hello",
                               "你好",
                               "안녕하세요",
                               "Xin chào",
                               "Selamat siang",
                               "Selamat sore",
                               "สวัสดีค่ะ",
                               "สวัสดีครับ",
                               "नमस्कार",
                               "ဟယ်လို",
                               "ສະບາຍດີ",
                               "ជម្រាប សួរ។",
                               "Сайн байна уу？",
                               "Magandang tanghali",
                               "Magandang hapon",
                               "नमस्ते",
                               "আসসালাম আলাইকুম।",
                               "নমস্কার",
                               "வணக்கம்",
                               "ನಮಸ್ಕಾರ",
                               "Bonjour",
                               "Guten tag",
                               "Buon giorno",
                               "Ciao",
                               "Hola",
                               "Buenas tardes",
                               "Hoi",
                               "Boa tarde",
                               "Olá",
                               "Moien",
                               "Γειά　σαζ",
                               "Γειά　σου"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return greetings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "helloCell") else {
            return UITableViewCell()
        }

        let greeting: String = greetings[indexPath.row]
        cell.textLabel?.text = greeting
        
        return cell
    }
}
