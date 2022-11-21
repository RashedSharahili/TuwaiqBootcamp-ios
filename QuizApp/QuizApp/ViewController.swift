//
//  ViewController.swift
//  QuizApp
//
//  Created by Rashed Shrahili on 19/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var qLable: UILabel!
    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var wrongLabel: UILabel!
    
    
    let questions2 = ["السعودية عاصمتها الخبر","أصغر قارة في العالم هي آسيا","أطول نهر في العالم هو نهر النيل","عدد لاعبين كرة القدم ١٠ لاعبين","يطلق على الجمل سفينة الصحراء","أصغر دولة أوروبية سويسرا"]
    let answers2 = [2,2,1,2,1,1]
    
    var currentQuestion = 0
    var rightAnswer = 0
    
    var correctAnswers = 0
    var wrongAnswers = 0
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        newQuest()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
//        newQuest()
    }
    
    func newQuest() {
        
        qLable.text = questions2[currentQuestion]
        
        rightAnswer = answers2[counter]
        currentQuestion += 1
        
        correctLabel.text = "الإجابات الصحيحة: \(correctAnswers)"
        wrongLabel.text = "الإجابات الخاطئة: \(wrongAnswers)"
        
        counter += 1
        
    }
    
    @IBAction func action(_ sender: UIButton) {
        
        if sender.tag == Int(rightAnswer) {
            
            print("Right")
            
            correctAnswers += 1
            
        } else {
            
            print("Wrong!!!!")
            
            wrongAnswers += 1
        }
        
        if currentQuestion != questions2.count {
            
            newQuest()
        }
    }
    
}

