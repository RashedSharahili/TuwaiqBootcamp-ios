//
//  ViewController.swift
//  BookStore
//
//  Created by Rashed Shrahili on 26/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bookTableView: UITableView!
    
    var bookDefault = [Book]()
    
    let searchController = UISearchController(searchResultsController: nil)
    
    var searching = false
    
    
    var index:Int?
    
    var favoriteBook = [Int:Bool]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        bookTableView.register(UINib(nibName: "BookCell", bundle: nil), forCellReuseIdentifier: "cellBook")
        
        bookTableView.layer.masksToBounds = true
        bookTableView.layer.borderWidth = 2.0
        bookTableView.layer.borderColor = UIColor.systemGray6.cgColor
        
        configureSearchController()
    }
    
    @IBAction func sortedBooks(_ sender: UISegmentedControl) {
        
        let selectedIndex = sender.selectedSegmentIndex
        
        switch selectedIndex {
            
        case 0:
            listOfBook.sort(by: {$0.price < $1.price})
        case 1:
            listOfBook.sort(by: {$0.price > $1.price})
        default:
            break
        }
        
        bookTableView.reloadData()
        
    }
    
}

