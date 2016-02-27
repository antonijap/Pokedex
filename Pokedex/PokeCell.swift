//
//  PokeCell.swift
//  Pokedex
//
//  Created by Antonija Pek on 27/02/16.
//  Copyright © 2016 Antonija Pek. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    // MARK: Outlets
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    // MARK: Properties
    
    var pokemon: Pokemon!
    
    // MARK: Methods
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        nameLbl.text = self.pokemon.name.capitalizedString
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
}
