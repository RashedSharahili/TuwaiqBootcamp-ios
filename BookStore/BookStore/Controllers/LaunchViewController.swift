//
//  LaunchViewController.swift
//  BookStore
//
//  Created by Rashed Shrahili on 29/01/1444 AH.
//

import UIKit

class LaunchViewController: UIViewController {
    
    @IBOutlet weak var launchAppLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor(red: 0.92, green: 0.79, blue: 0.35, alpha: 1.00).cgColor, UIColor(red: 0.93, green: 0.81, blue: 0.41, alpha: 1.00).cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        launchAnimation()
    }
    
    private func launchAnimation() {
        
        let animationText = "متجر الكتب 📚"
        
//        for txt in animationText {
//
//            launchLabel.text! += "\(txt)"
//
//            RunLoop.current.run(until: Date() + 0.12)
//
//        }
        
        UIView.animate(withDuration: 2, delay: 0, options: []) { [self] in
            
            launchAppLabel.text = animationText
            
            launchAppLabel.alpha = 1
            
            launchAppLabel.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            
        } completion: { [self] completed in
            
            if completed {
                
                UIView.animate(withDuration: 2, delay: 0, options: []) {
                    
                    self.launchAppLabel.transform = .identity
                    
                } completion: { completed in
                    
                    self.transitionToApp()
                    
                }
                
            }
            
        }
        
    }
    
    func transitionToApp() {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let firstViewController = storyBoard.instantiateViewController(withIdentifier: "firstView") as! UINavigationController
        self.present(firstViewController, animated:true, completion:nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
