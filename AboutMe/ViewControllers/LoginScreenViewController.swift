//
//  ViewController.swift
//  AboutMe
//
//  Created by Даниил Козлов on 28.10.2022.
//

import UIKit

class LoginScreenViewController: UIViewController {
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!

    private let userData = User(person: daniil)
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        
        guard let tapBarVCArray = tabBarController.viewControllers else { return }
        
        for viewController in tapBarVCArray {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = daniil.name
                welcomeVC.userSurname = daniil.surname
            } //else if let navigationVC = viewController as? UINavigationController {
//                let aboutUserVC = navigationVC.topViewController as! TransferViewController
//                aboutUserVC.aboutText = daniil.about
                } 
            }
    
            @IBAction func loginButtonPressed() {
                if usernameTF.text != userData.login || passwordTF.text != userData.password {
                    showAlert(
                        title: "Invalid login or password",
                        message: "Please, enter correct login and password"
                    )
                    return
                }
            }
            
            @IBAction func forgotUserData(_ sender: UIButton) {
                sender.tag == 0
                ? showAlert(title: "Oops!", message: "Your name is \(userData.login)")
                : showAlert(title: "Oops!", message: "Your password is \(userData.password)")
            }
            @IBAction func unwind(segue: UIStoryboardSegue) {
                usernameTF.text = ""
                passwordTF.text = ""
            }
}

        extension LoginScreenViewController {
            private func showAlert(title: String, message: String) {
                let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
                let okAction = UIAlertAction(title: "Ok", style: .default)
                alert.addAction(okAction)
                present(alert, animated: true)
            }
        }
        
        extension LoginScreenViewController: UITextFieldDelegate {
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

