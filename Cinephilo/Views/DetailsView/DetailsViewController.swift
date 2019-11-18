//
//  DetailsViewController.swift
//  Cinephilo
//
//  Created by zupper on 12/11/19.
//  Copyright © 2019 Risonaldo. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var titulo: UINavigationItem!
    @IBOutlet weak var imageFilmes: UIImageView!
    @IBOutlet weak var labelRate: UILabel!
    @IBOutlet weak var labelYear: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSynopse: UILabel!
    
    @IBOutlet weak var buttonAddFavorite: UIButton!
    
    var imvMovie = UIImage()
    var rateMovie = Double()
    var yearMovie = Int()
    var titleMovie = String()
    var plotSummary = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.turnBlack()
        imageFilmes.image = imvMovie
        labelRate!.text = "Rate: \(rateMovie)"
        labelYear!.text = "Year: \(yearMovie)"
        labelTitle!.text = titleMovie
        labelSynopse!.text = plotSummary
    }
    
}

