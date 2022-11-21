//
//  ViewController.swift
//  Assignment3
//
//  Created by Rashed Shrahili on 09/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var resWelcome: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func setName(_ sender: Any) {
        
        resWelcome.text = "مرحباً بك يا \(firstName.text!) \(lastName.text!)"
    }
    


}

