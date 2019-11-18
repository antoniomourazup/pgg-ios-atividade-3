//
//  MoviesCollectionViewCell.swift
//  Cinephilo
//
//  Created by zupper on 12/11/19.
//  Copyright © 2019 Risonaldo. All rights reserved.
//

import UIKit

class MoviesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageMovieCell: UIImageView!
    @IBOutlet weak var labelNameMovieCell: UILabel!
    @IBOutlet weak var labelRateMovieCell: UILabel!
    static let identifierMovieCell: String = "moviesCollectionViewCell"
    
    public func configureSetMovie(with model: MovieModel) {
        imageMovieCell.image = model.poster
        labelNameMovieCell.text = model.title
        labelRateMovieCell.text = String(model.rated)
    }
}
