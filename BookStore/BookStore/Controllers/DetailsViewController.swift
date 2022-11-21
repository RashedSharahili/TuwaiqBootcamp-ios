//
//  DetailsViewController.swift
//  BookStore
//
//  Created by Rashed Shrahili on 29/01/1444 AH.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var bookImageView: UIImageView!
    
    @IBOutlet weak var bookTitleLabel: UILabel!
    
    @IBOutlet weak var bookPriceLabel: UILabel!
    
    @IBOutlet weak var bookAuthorLabel: UILabel!
    
    var bookImage:UIImage?
    var bookTitle:String?
    var bookPrice:Double?
    var bookAuthor:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bookImageView.image = bookImage
        bookTitleLabel.text = bookTitle
        bookPriceLabel.text = "\(bookPrice!) رس"
        bookAuthorLabel.text = bookAuthor
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
