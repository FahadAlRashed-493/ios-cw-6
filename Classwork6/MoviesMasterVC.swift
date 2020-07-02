//
//  MoviesMasterVC.swift
//  Classwork6
//
//  Created by fahad alrashed on 7/2/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MoviesMasterVC: UIViewController {
    var marvelimages = MarvelMovieData
    var dcimages = DCMovieData
    
    
    @IBOutlet weak var marvelImg0: UIButton!
    @IBOutlet weak var marvelImg1: UIButton!
    @IBOutlet weak var marvelImg2: UIButton!
    @IBOutlet weak var marvelImg3: UIButton!
    @IBOutlet weak var marvelImg4: UIButton!
    @IBOutlet weak var marvelImg5: UIButton!
    
    
    @IBOutlet weak var dcImg0: UIButton!
    @IBOutlet weak var dcImg1: UIButton!
    @IBOutlet weak var dcImg2: UIButton!
    @IBOutlet weak var dcImg3: UIButton!
    @IBOutlet weak var dcImg4: UIButton!
    @IBOutlet weak var dcImg5: UIButton!
    
    override func viewDidLoad() {
        setmarvelImages()
        setdcImages()
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        guard let moviecontroller  = segue.destination as? MovieDetailsVC else{
            fatalError()
        }
        moviecontroller.moviedata = selectedMovie
    }
    
    
    
    
    
    
    func setmarvelImages(){
        marvelImg0.setBackgroundImage(UIImage(named: marvelimages[0].movieName), for: .normal)
         marvelImg1.setBackgroundImage(UIImage(named: marvelimages[1].movieName), for: .normal)
         marvelImg2.setBackgroundImage(UIImage(named: marvelimages[2].movieName), for: .normal)
         marvelImg3.setBackgroundImage(UIImage(named: marvelimages[3].movieName), for: .normal)
         marvelImg4.setBackgroundImage(UIImage(named: marvelimages[4].movieName), for: .normal)
         marvelImg5.setBackgroundImage(UIImage(named: marvelimages[5].movieName), for: .normal)
    }
    func setdcImages(){
        dcImg0.setBackgroundImage(UIImage(named:dcimages[0].movieName), for: .normal)
         dcImg1.setBackgroundImage(UIImage(named:dcimages[1].movieName), for: .normal)
         dcImg2.setBackgroundImage(UIImage(named:dcimages[2].movieName), for: .normal)
         dcImg3.setBackgroundImage(UIImage(named:dcimages[3].movieName), for: .normal)
         dcImg4.setBackgroundImage(UIImage(named:dcimages[4].movieName), for: .normal)
         dcImg5.setBackgroundImage(UIImage(named:dcimages[5].movieName), for: .normal)
        
    }
    var selectedMovie: Movie = Movie(movieName: "", movieReleaseDate: 2000, actors: ["",], rating: 0.0, pgRating: "pg")
    
    @IBAction func marvelbtns(_ sender: UIButton) {
        print("Marvvel", sender.tag)
        selectedMovie = MarvelMovieData[sender.tag]
        performSegue(withIdentifier: "goToMovieDetails", sender: nil)
    }
    
    
    @IBAction func dcbtns(_ sender: UIButton) {
        print("DC", sender.tag)
        selectedMovie = DCMovieData[sender.tag]
                performSegue(withIdentifier: "goToMovieDetails", sender: nil)
    }
}
