//
//  ViewController.swift
//  Cinephilo
//
//  Created by zupper on 07/11/19.
//  Copyright © 2019 Risonaldo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var filme = [Filme]()
    var itemSelected = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var load = loadFilmes()
        filme = load.generateListFilmes()
        self.view.turnBlack()
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmeCell", for: indexPath) as! FilmeCell
        
        cell.imageFilmeCell.image = filme[indexPath.row].imagem
        cell.imageFilmeCell.contentMode = UIView.ContentMode.scaleToFill
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        itemSelected = indexPath.row
        
        self.performSegue(withIdentifier: "mostrarDetalhes", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let VCDestino = segue.destination as! ViewController2
        VCDestino.img = filme[itemSelected].imagem
        VCDestino.titulo.title = filme[itemSelected].title
    }
}

extension ViewController: UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filme.count
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout cell: UICollectionViewCell, forItemAt indexPath: IndexPath) -> CGSize {
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


extension UIView {
    func turnBlack() {
        backgroundColor = .black
    }
}
