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
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageFilmes: UIImageView!
    
    var imvMovie = UIImage()
    var sinopseMovie = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.turnBlack()
        imageFilmes.image = imvMovie
        labelTitle!.text = sinopseMovie
    }
}

