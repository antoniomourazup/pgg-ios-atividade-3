//
//  ViewController2.swift
//  Cinephilo
//
//  Created by zupper on 12/11/19.
//  Copyright © 2019 Risonaldo. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var titulo: UINavigationItem!
    @IBOutlet weak var imageFilmes: UIImageView!
    var img = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.turnBlack()
        imageFilmes.image = img
    }
}

