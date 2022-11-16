//
//  TransferViewController.swift
//  AboutMe
//
//  Created by Даниил Козлов on 03.11.2022.
//

import UIKit

class TransferViewController: UIViewController {

//    let daniil = Person.getUserInfo() // Вот здесь ошибка
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutMeVC = segue.destination as? AboutMeViewController else { return }
        aboutMeVC.aboutText = user.person.about
        aboutMeVC.topLabel = user.person.fullName
    }
    @IBAction func showAboutMe() {
    }
}
