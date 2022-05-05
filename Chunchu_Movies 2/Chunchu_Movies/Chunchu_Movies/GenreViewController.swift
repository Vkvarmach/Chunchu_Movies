//
//  ViewController.swift
//  Chunchu_Movies
//
//  Created by Chunchu,Vijay Kumar on 4/28/22.
//

import UIKit

class GenreViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
        let Mvcategory = GenreArray
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            Mvcategory.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
            cell.textLabel?.text = Mvcategory[indexPath.row].category
            return cell
        }

    
    
    
    
    
    @IBOutlet weak var genreTableView: UITableView!
   
    
    
override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        genreTableView.dataSource = self
        genreTableView.delegate = self
    }
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieSegue" {
            let destination = segue.destination as! MoviesViewController
            destination.moviesArray = Mvcategory [genreTableView.indexPathForSelectedRow!.row].movies
            print(Mvcategory [genreTableView.indexPathForSelectedRow!.row].movies)
            
        }
    }


}



