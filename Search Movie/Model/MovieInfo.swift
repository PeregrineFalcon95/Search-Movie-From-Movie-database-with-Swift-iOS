//
//  PersonalInfo.swift
//  Search Movie
//
//  Created by Amit Sarker on 10/30/21.
//

import Foundation
import UIKit

struct MovieInfo {
    var movieIcon : UIImage
    var movieTitle: String
    var movieDescription: String
    
    init(movieIcon : UIImage?, movieTitle : String, movieDescription : String)
    {
        self.movieIcon = movieIcon ?? UIImage(named: "nillMovieIcon")!
        self.movieTitle = movieTitle
        self.movieDescription = movieDescription
    }
}
