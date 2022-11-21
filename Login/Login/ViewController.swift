//
//  ViewController.swift
//  Login
//
//  Created by Rashed Shrahili on 18/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgetUsernameBtn: UIButton!
    @IBOutlet weak var forgetPasswordBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else { return }
        
        if sender == forgetUsernameBtn {
            
            segue.destination.navigationItem.title = "Forget Username"
            
        } else if sender == forgetPasswordBtn {
            
            segue.destination.navigationItem.title = "Forget Password"
            
        } else {
            
            segue.destination.navigationItem.title = userNameTextField.text!
            
        }
    }
    
    @IBAction func forgetUsername(_ sender: Any) {
        
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
    @IBAction func forgetPassword(_ sender: Any) {
        
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
    
    
}

