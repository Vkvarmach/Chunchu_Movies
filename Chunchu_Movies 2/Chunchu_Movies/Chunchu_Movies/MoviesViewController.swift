//
//  MoviesViewController.swift
//  Chunchu_Movies
//
//  Created by Chunchu,Vijay Kumar on 4/28/22.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return moviesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let MovieCell = moviecollectionview .dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        
        MovieCell.ConnectMovie(moviesArray[indexPath.row])
        return MovieCell
        
    }
    
    
    
    
    
    @IBOutlet var moviecollectionview: UICollectionView!
    
    
    @IBOutlet var movieNameLabel: UILabel!
    
    @IBOutlet var movieRatingLabel: UILabel!
    
    
    @IBOutlet var movieBoxOfficeLabel: UILabel!
    
    
    @IBOutlet var movieYearLabel: UILabel!
    
    
    @IBOutlet var moviePlotLabel: UILabel!
    
    
    
    @IBOutlet var movieCastLabel: UILabel!
    
    var moviesArray:[Movie] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        moviecollectionview.delegate = self
        moviecollectionview.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        movieNameLabel.text = "Movie Name: " + moviesArray[indexPath.row].title
        movieRatingLabel.text = "Movie Rating: " + moviesArray[indexPath.row].movieRating
        movieBoxOfficeLabel.text = "Box Office Collection: " + moviesArray[indexPath.row].boxOffice
        
        movieYearLabel.text = "Movie Released Year: " + moviesArray[indexPath.row].releasedYear
        moviePlotLabel.text = "Plot: " +  moviesArray[indexPath.row].moviePlot
        
        var cast : [String] = moviesArray[indexPath.row].cast
        movieCastLabel.text = "Cast: " + cast.joined(separator: ", ")
    }
        
        
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


