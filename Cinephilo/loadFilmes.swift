//
//  loadFilmes.swift
//  Cinephilo
//
//  Created by zupper on 12/11/19.
//  Copyright © 2019 Risonaldo. All rights reserved.
//

import UIKit

struct loadFilmes {
    var filme = [Filme]()
    
    mutating func generateListFilmes() -> [Filme]{
        filme += [
        Filme(imagem: UIImage(named: "aquaman"), title: "Aquaman"),
        Filme(imagem: UIImage(named: "avatar"), title: "Avatar"),
        Filme(imagem: UIImage(named: "dora"), title: "Dora"),
        Filme(imagem: UIImage(named: "gemini"), title: "Gemini"),
        Filme(imagem: UIImage(named: "pantera"), title: "Pantera"),
        Filme(imagem: UIImage(named: "parcas"), title: "Parças"),
        Filme(imagem: UIImage(named: "rambo"), title: "Rambo"),
        Filme(imagem: UIImage(named: "titanic"), title: "Titanic"),
        Filme(imagem: UIImage(named: "vingadores"), title: "vingadores"),
        Filme(imagem: UIImage(named: "zumbilandia"), title: "Zumbilândia")]
        
        return filme
    }
}
