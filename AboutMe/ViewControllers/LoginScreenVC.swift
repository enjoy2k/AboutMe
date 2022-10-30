//
//  ViewController.swift
//  AboutMe
//
//  Created by Даниил Козлов on 28.10.2022.
//

import UIKit

class LoginScreenVC: UIViewController {

    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let user = "User"
    let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func loginButtonPressed() {
    }
    
    @IBAction func forgotUserData(_ sender: UIButton) {
        passwordTF.tag == 0
        ? showAlert(title: "Oops!", message: "Your username is \(user)")
        : showAlert(title: "Oops!", message: "Your password is \(password)")
    }
    
}

extension LoginScreenVC {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
