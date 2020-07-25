//
//  DetailsViewController.swift
//  Jeewan-Bhusal_COMP2125-Sec001_Lab04_Version2
//
//  Created by jeewan bhusal on 25.7.2020.
//  Copyright © 2020 jeewan bhusal. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    //OutLets
    @IBOutlet var movieTitle: UILabel!
    @IBOutlet var movieYear: UILabel!
    @IBOutlet var movieDirector: UILabel!
    @IBOutlet var movieDuration: UILabel!
    @IBOutlet var movieImage: UIImageView!
    
    //Local Variables
    var movieName:String!
    var movieDate:String!
    var movieMaker:String!
    var movieLength:String!
    var moviePic:UIImage! //this variable has to be UIImage only
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //assing local values to outlets
        movieTitle.text = movieName
        movieYear.text = movieDate
        movieDirector.text = movieMaker
        movieDuration.text = movieLength
        movieImage.image = moviePic
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
