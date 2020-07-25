//
//  ViewController.swift
//  Jeewan-Bhusal_COMP2125-Sec001_Lab04
//
//  Created by jeewan bhusal on 24.7.2020.
//  Copyright © 2020 jeewan bhusal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    //in the future, i should get these values from API call/OR WEB CRAWLING from IMDB
    //define array of values for movie name, image and release year
    let movieName = ["1917", "Basketball Diaries", "Ford vs Ferrari","The Matrix"]
    let movieYear = ["2019","1995","2019","1999"]
    let movieImage = ["1917","bd","fvf","matrix"]
    let movieDirector = ["Sam Mendes", "Scott Kalvert", "James Mangold","Lana Wachowski"]
    let movieDuration = ["1h 59min","1h 42min","2h 32min","2h 16min"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieName.count
    } //end of tableview func
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tempCell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        tempCell.movieName.text = movieName[indexPath.row]
        tempCell.movieYear.text = movieYear[indexPath.row]
        tempCell.movieImage.image = UIImage(named: movieImage[indexPath.row] + ".png")
        
        return tempCell
        
    }//end of tableView func
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //reference the Details View Controller in detailVC variable
        let detailVC:DetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        
        //assigning the values to the labels
        detailVC.movieName = movieName[indexPath.row]
        detailVC.movieDate = movieYear[indexPath.row]
        detailVC.movieMaker = movieDirector[indexPath.row]
        detailVC.movieLength = movieDuration[indexPath.row]
        detailVC.moviePic = UIImage(named: movieImage[indexPath.row] + ".png")
        //make it navigate to Details View Controller
        self.navigationController?.pushViewController(detailVC, animated: true)
    
    } //end of func didselectrowat
    
} //end of class

