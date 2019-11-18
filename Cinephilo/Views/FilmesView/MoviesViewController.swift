//
//  MoviesViewController.swift
//  Cinephilo
//
//  Created by zupper on 07/11/19.
//  Copyright © 2019 Risonaldo. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var filme = [MovieModel]()
    var itemSelected = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var load = loadFilmes()
        filme = load.generateListFilmes()
        //self.view.turnBlack()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension MoviesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MoviesCollectionViewCell.identifierMovieCell, for: indexPath) as! MoviesCollectionViewCell
        cell.configureSetMovie(with: filme[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        itemSelected = indexPath.row
        self.performSegue(withIdentifier: "showDetailsView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let VCDestino = segue.destination as! DetailsViewController
        VCDestino.imvMovie = filme[itemSelected].poster
        VCDestino.titulo.title = filme[itemSelected].title
        VCDestino.sinopseMovie = filme[itemSelected].plotSummary
    }
}

extension MoviesViewController: UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filme.count
    }
}

extension MoviesViewController: UICollectionViewDelegateFlowLayout {
    private func collectionView(_ collectionView: UICollectionView, layout cell: UICollectionViewCell, forItemAt indexPath: IndexPath) -> CGSize {
        let screenWidht = self.view.frame.width
        let cellWidht = (screenWidht/2.0)
        return CGSize(width: cellWidht, height: cellWidht)
    }
    
    private func collectionView(_ collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewCell, minimumLineSpacingForSectionAt
        section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat{
        return 0.0
    }
}


//extension UIView {
//    func turnBlack() {
//        backgroundColor = .black
//    }
//}
