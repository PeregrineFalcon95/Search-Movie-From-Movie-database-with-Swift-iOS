//
//  DataLoader.swift
//  Search Movie
//
//  Created by Amit Sarker on 10/30/21.
//

import Foundation
import UIKit

class DataLoader{
    static let shared = DataLoader()
    var movies : [ MovieInfo ] = []
    var isInternet = true
    
    func loadData(){
        let movieOne = MovieInfo(movieIcon: UIImage(named: "captainMervelIcon"), movieTitle: "Captain Marvel", movieDescription: "The story follows Carol Danvers as she becomes one of the universe’s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races. Set in the 1990s, Captain Marvel is an all-new adventure from a previously unseen period in the history of the Marvel Cinematic Universe.")
        movies.append( movieOne )
        
        let movieTwo = MovieInfo(movieIcon: nil, movieTitle: "Marvel Knights: Eternals", movieDescription: "You are thousands of years old. You have amazing powers. You have watched civilizations rise and fall. So why does no one remember any of this? Best-selling author, Neil Gaiman (Marvel: 1602) is joined by superstar artist, John Romita. Jr. (Amazing Spider-Man), to bring you the extraordinary tale of The Eternals. Medical student Mark Curry's world is turned upside-down when he meets Ike Harris, a man who believes that he is part of a centuries-old race of super-powered beings put here on Earth by aliens to preserve and safeguard the planet — and even crazier, tried to convince Mark that he is one too.")
        movies.append( movieTwo )
        
        let movieThree = MovieInfo(movieIcon: UIImage(named: "marvelCarter"), movieTitle: "Marvel One-Shot: Agent Carter", movieDescription: "The film takes place one year after the events of Captain America: The First Avenger, in which Agent Carter, a member of the Strategic Scientific Reserve, is in search of the mysterious Zodiac.")
        movies.append( movieThree )
        
        let movieFour = MovieInfo(movieIcon: UIImage(named: "FrostFight"), movieTitle: "Marvel Super Hero Adventures: Frost Fight!", movieDescription: "The holiday season gets extra chilly as Loki and the frost giant Ymir plot to conquer the world. Marvel heroes Iron Man, Captain America, Hulk, Thor and others must stop the villains from stealing Santa's power – if anyone can actually find the mysterious Mr. Claus. Fortunately, Rocket Raccoon and Groot are also hot on Santa's trail. Heroes, villains, elves and cosmic bounty hunters collide in an epic quest that leaves the fate of the holiday and the world in the balance.")
        movies.append(movieFour)
        
    }
}
