//
//  ViewController.swift
//  RandomNamesAssignment
//
//  Created by Rashed Shrahili on 25/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var submitNameBtn: UIButton!
    @IBOutlet weak var namesLabel: UILabel!
    
    @IBOutlet weak var selectedNameLabel: UILabel!
    
    
    var namesList:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func enterNameAction(_ sender: UIButton) {
        
        if let item = nameTextField.text, item.isEmpty == false {
            
            namesList.append(item)
        }
        
        nameTextField.text = nil
        
        namesLabel.text = ""
        
        for i in namesList {
            
            namesLabel.text! += "\(i) \n"
        }
        
        //print(namesList)
    }
    
    @IBAction func getRandomName(_ sender: UIButton) {
        
        if !namesList.isEmpty {
            
            let randomName = namesList.randomElement()!
            
            //print(randomName)
            
            selectedNameLabel.text = randomName
            
        } else {
            
            //print("Please Enter Names")
            
            // create the alert
            let alert = UIAlertController(title: "Warning!", message: "Please, Enter Name to Select Names Random", preferredStyle: .alert)

            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    
}

