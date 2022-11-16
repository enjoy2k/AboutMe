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

    private let user = User.getUser()
//    private let daniil = Person.getUserInfo()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let tapBarVCArray = tabBarController.viewControllers else { return }
        
        tapBarVCArray.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let transferVC = navigationVC.topViewController as! TransferViewController
                transferVC.user = user
            }
            }
        }
    
            @IBAction func loginButtonPressed() {
                if usernameTF.text != user.login || passwordTF.text != user.password {
                    showAlert(
                        title: "Invalid login or password",
                        message: "Please, enter correct login and password"
                    )
                    return
                }
            }
            
            @IBAction func forgotUserData(_ sender: UIButton) {
                sender.tag == 0
                ? showAlert(title: "Oops!", message: "Your name is \(user.login)")
                : showAlert(title: "Oops!", message: "Your password is \(user.password)")
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

