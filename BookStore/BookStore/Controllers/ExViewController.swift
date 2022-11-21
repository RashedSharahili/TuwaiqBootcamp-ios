//
//  ExViewController.swift
//  BookStore
//
//  Created by Rashed Shrahili on 27/01/1444 AH.
//

import UIKit

extension ViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if searching {
            
            return bookDefault.count
            
        } else {
            
            return listOfBook.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellBook", for: indexPath) as! BookCell
        
        if searching {
            
            cell.bookImageView.image = UIImage(named: bookDefault[indexPath.row].bookImage)
            cell.bookTitleLabel.text = bookDefault[indexPath.row].title
            cell.bookPriceLabel.text = "\(bookDefault[indexPath.row].price) ر.س"
            cell.bookAuthorLabel.text = bookDefault[indexPath.row].author
            
            if favoriteBook[indexPath.row] == true {
                
                cell.isBookLikedBtn.imageView?.image = UIImage(systemName: "heart.fill")
                cell.isBookLikedBtn.tintColor = .red
                
            } else {
                
                cell.isBookLikedBtn.imageView?.image = UIImage(systemName: "heart")
                
            }
            
        } else {
            
            cell.bookImageView.image = UIImage(named: listOfBook[indexPath.row].bookImage)
            cell.bookTitleLabel.text = listOfBook[indexPath.row].title
            cell.bookPriceLabel.text = "\(listOfBook[indexPath.row].price) ر.س"
            cell.bookAuthorLabel.text = listOfBook[indexPath.row].author
            
            if favoriteBook[indexPath.row] == true {
                
                cell.isBookLikedBtn.imageView?.image = UIImage(systemName: "heart.fill")
                cell.isBookLikedBtn.tintColor = .red
                
            } else {
                
                cell.isBookLikedBtn.imageView?.image = UIImage(systemName: "heart")
                
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        index = indexPath.row
        
        performSegue(withIdentifier: "bookDetailsSegue", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "bookDetailsSegue" {
            
            if let viewVC = segue.destination as? DetailsViewController {
                
                viewVC.bookImage = UIImage(named: listOfBook[index!].bookImage)
                viewVC.bookTitle = listOfBook[index!].title
                viewVC.bookPrice = listOfBook[index!].price
                viewVC.bookAuthor = listOfBook[index!].author
            }
        }
        
    }
    
}

extension ViewController : UISearchBarDelegate, UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        
        let searchText = searchController.searchBar.text!
        if !searchText.isEmpty
        {
            searching = true
            bookDefault.removeAll()

            for book in listOfBook
            {
                if book.title.lowercased().contains(searchText.lowercased())
                {
                    bookDefault.append(book)
                }
            }
        }
        else
        {

            searching = false
            bookDefault.removeAll()
            bookDefault = listOfBook
        }

        bookTableView.reloadData()
    }
    
    func configureSearchController() {
        
        searchController.loadViewIfNeeded()
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate   = self
       // searchController.searchBar.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.enablesReturnKeyAutomatically = false
        searchController.searchBar.returnKeyType = UIReturnKeyType.done
        self.navigationItem.hidesSearchBarWhenScrolling = false
        self.navigationItem.searchController = searchController
        definesPresentationContext = true
        searchController.searchBar.placeholder = "أبحث عن الكتاب بالعنوان"
        
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        
        searching = false
        bookDefault.removeAll()
        bookTableView.reloadData()
    }
    
}
