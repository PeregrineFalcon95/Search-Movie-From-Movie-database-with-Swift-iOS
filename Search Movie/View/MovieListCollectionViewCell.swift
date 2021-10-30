//
//  MovieListCollectionViewCell.swift
//  Search Movie
//
//  Created by Amit Sarker on 10/30/21.
//

import UIKit

class MovieListCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDesscription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    public func configure ( image: UIImage, movieTitle: String, movieDesscription: String ){
        
        self.iconImageView.image = image
        self.movieTitle.text = movieTitle
        self.movieDesscription.text = movieDesscription
    }
    
    static func nib() -> UINib{
        return UINib(nibName: "MovieListCollectionViewCell", bundle: nil)
    }
    deinit {
        print("Collection View Cell Deinit")
    }
    
}
