//
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by fahad alrashed on 7/2/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVC: UIViewController {
    
    var moviedata : Movie = Movie(movieName: "Joker", movieReleaseDate: 2000, actors: [""], rating: 10.0, pgRating: "PG-13")
    
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieName: UINavigationItem!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var moviReleaseDate: UILabel!
    @IBOutlet weak var actorImg1: UIImageView!
    @IBOutlet weak var actorName1: UILabel!
    @IBOutlet weak var actorImg2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    @IBOutlet weak var actorImg3: UIImageView!
    @IBOutlet weak var actorName3: UILabel!
    
    
    @IBOutlet weak var ratingBG: UIView!
    
    @IBOutlet weak var ratedBg: UIView!
    
    @IBOutlet weak var yearBG: UIView!
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setMovieDetails()
        configureUI()
    }
    func setMovieDetails(){
        movieName.title = moviedata.movieName
        self.movieImg.image = UIImage(named: moviedata.movieName)
        self.movieRated.text = moviedata.pgRating
        self.movieRating.text = String(moviedata.rating)
        self.moviReleaseDate.text = String(moviedata.movieReleaseDate)
        self.actorImg1.image = UIImage(named:moviedata.actors[0])
        self.actorName1.text = moviedata.actors[0]
        self.actorImg2.image = UIImage(named:moviedata.actors[1])
               self.actorName2.text = moviedata.actors[1]
        self.actorImg3.image = UIImage(named:moviedata.actors[2])
               self.actorName3.text = moviedata.actors[2]
        
        
        
    }
    func configureUI(){
        ratedBg.layer.cornerRadius = 20
        ratingBG.layer.cornerRadius = 20
        yearBG.layer.cornerRadius = 20
        
    }

}
