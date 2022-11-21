//
//  ViewController.swift
//  TableViewAssignment
//
//  Created by Rashed Shrahili on 23/01/1444 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var colorArr = ["red","green","blue","brown","cyan"]
    
    var colorList = [UIColor.red,UIColor.green,UIColor.blue,UIColor.brown,UIColor.cyan]
    
    var index:Int?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return colorList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = "\(colorArr[indexPath.row])"
            
        cell.backgroundColor = colorList[indexPath.row]
        
        //print(index)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        index = indexPath.row
        
        performSegue(withIdentifier: "goWithColor", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goWithColor" {
            
            if let vc = segue.destination as? SecondViewController {
                
                vc.backGroundcolor = colorList[index!]
            }
        }
    }
    
    
    @IBOutlet weak var colorsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

