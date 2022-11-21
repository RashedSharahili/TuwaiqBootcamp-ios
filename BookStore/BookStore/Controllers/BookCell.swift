//
//  BookCell.swift
//  BookStore
//
//  Created by Rashed Shrahili on 27/01/1444 AH.
//

import UIKit

var isLikeBook = UserDefaults.standard

class BookCell: UITableViewCell {
    
    @IBOutlet weak var bookImageView: UIImageView!
    
    @IBOutlet weak var bookTitleLabel: UILabel!
    
    @IBOutlet weak var bookPriceLabel: UILabel!
    
    @IBOutlet weak var bookAuthorLabel: UILabel!
    
    @IBOutlet weak var isBookLikedBtn: UIButton!
    
//    let quoteLikes :[Bool] = quoteList.map() { $0.like }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func actionLike(_ sender: UIButton) {
        
        //quoteList[sender.tag].like.toggle()
        
        if sender.tag == 0 {
            
            sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            sender.tintColor = .red
            sender.tag = 1
            //isLikeBook.set(1, forKey: "bookLike")
            
        } else {
           
            sender.setImage(UIImage(systemName: "heart"), for: .normal)
            sender.tintColor = .darkGray
            sender.tag = 0
            isLikeBook.set(0, forKey: "bookLike")
        }
        
    }
    
    
}
