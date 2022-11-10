//
//  TransferViewController.swift
//  AboutMe
//
//  Created by Даниил Козлов on 03.11.2022.
//

import UIKit

class TransferViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? AboutMeViewController else { return }
        navigationVC.aboutText = 
    }
}
