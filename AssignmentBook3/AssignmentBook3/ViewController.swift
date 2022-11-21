//
//  ViewController.swift
//  AssignmentBook3
//
//  Created by Rashed Shrahili on 10/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lightButton: UIButton!
    
    var lightOn = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    fileprivate func updateUI() {
        
        view.backgroundColor = lightOn ? .white : .black
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        lightOn.toggle()
        
        updateUI()
    }
    


}

