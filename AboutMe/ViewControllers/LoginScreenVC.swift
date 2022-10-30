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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeVC else { return }
        welcomeVC.welcomeUser = user
    }

    @IBAction func loginButtonPressed() {
        if usernameTF.text != user || passwordTF.text != password {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
            return
        }
    }
    
    @IBAction func forgotUserData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user)")
        : showAlert(title: "Oops!", message: "Your password is \(password)")
    }
    @IBAction func unwind(segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
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

extension LoginScreenVC {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameTF {
            passwordTF.becomeFirstResponder()
        } else {
            loginButtonPressed()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
         return true
    }
}
