//
//  MovieDetailsViewController.swift
//  flixster
//
//  Created by Sophia Lui on 4/11/21.
//

import UIKit
import AlamofireImage
class MovieDetailsViewController: UIViewController {
    
    // property called movie
    var movie: [String:Any]! // "!" = swift optional

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var synopsisLabel: UILabel!
    
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //print(movie["title"])
    
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath) // validates the base url
        posterView.af_setImage(withURL: posterUrl!)

        let backgroundPath = movie["backdrop_path"] as! String
        let backgroundUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backgroundPath) // validates the base url
    
        backgroundImageView.af_setImage(withURL: backgroundUrl!)

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
