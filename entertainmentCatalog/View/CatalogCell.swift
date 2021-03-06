//
//  CatalogCell.swift
//  entertainmentCatalog
//
//  Created by Mokhamad Valid Kazimi on 28.04.2018.
//  Copyright © 2018 Mokhamad Valid Kazimi. All rights reserved.
//

import UIKit

class CatalogCell: UITableViewCell {
    // Outlets
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var genreLbl: UILabel!
    @IBOutlet weak var preGenreLbl: UILabel!
    @IBOutlet weak var releaseYearLbl: UILabel!
    @IBOutlet weak var preReleaseYearLbl: UILabel!
    @IBOutlet weak var tapDescriptionLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tapDescriptionLbl.layer.cornerRadius = 5
        tapDescriptionLbl.clipsToBounds = true
        
        let bounds = UIScreen.main.bounds
        let screenWidth = bounds.size.width
        
        if screenWidth == 320 {
            titleLbl.adjustsFontSizeToFitWidth = true
            genreLbl.adjustsFontSizeToFitWidth = true
            releaseYearLbl.adjustsFontSizeToFitWidth = true
            preGenreLbl.adjustsFontSizeToFitWidth = true
            preReleaseYearLbl.adjustsFontSizeToFitWidth = true
        }
        
    }

    // Methods
    func configureCell(withGame game: Game) {
        if let imageData = game.gamePoster, let image = UIImage(data: imageData) {
            self.posterImageView.image = image
        }
        
        self.titleLbl.text = game.gameTitle
        self.genreLbl.text = game.gameGenre
        self.releaseYearLbl.text = game.gameRealeaseYear
    }
}
