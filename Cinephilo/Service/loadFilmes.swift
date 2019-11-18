//
//  loadFilmes.swift
//  Cinephilo
//
//  Created by zupper on 12/11/19.
//  Copyright © 2019 Risonaldo. All rights reserved.
//

import UIKit

struct loadFilmes {
    var filme = [MovieModel]()
    
    mutating func generateListFilmes() -> [MovieModel]{
        filme += [
            MovieModel(id: 0, poster: UIImage(named: "aquaman"), title: "Aquaman", plotSummary: "Aquaman não nada dkjsnfakjsdnfkasjdnfk aosdjfnosajfnosaijdfn oasdjfnoj ojsdnf osdjfn sodfjn sdofnsf onsf okndsf", rated: 4.3, year: 2019, genre: "Ação"),
            MovieModel(id: 1, poster: UIImage(named: "avatar"), title: "Avatar 2", plotSummary: "Não é o Ang", rated: 4.7, year: 2016, genre: "Aventura")
        ]
        
        return filme
    }
}
