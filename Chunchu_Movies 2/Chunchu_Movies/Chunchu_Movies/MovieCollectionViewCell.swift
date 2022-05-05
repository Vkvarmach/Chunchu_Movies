//
//  MovieCollectionViewCell.swift
//  Chunchu_Movies
//
//  Created by Chunchu,Vijay Kumar on 4/28/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {

    
    
    @IBOutlet weak var MovieImageOutlet: UIImageView!
    
    
    func ConnectMovie(_ movie: Movie) {
        MovieImageOutlet.image = movie.image
    
    
  }
}
