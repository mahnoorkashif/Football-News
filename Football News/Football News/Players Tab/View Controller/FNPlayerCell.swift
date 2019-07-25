//
//  FNPlayerCell.swift
//  Football News
//
//  Created by Mahnoor Khan on 19/07/2019.
//  Copyright © 2019 Mahnoor Khan. All rights reserved.
//

import UIKit

class FNPlayerCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var playerName   :   UILabel!
    @IBOutlet weak var playerClub   :   UILabel!
    @IBOutlet weak var playerImage  :   UIImageView!
}

// MARK: Populating Player Cell
extension FNPlayerCell : NetworkEngine {
    func setPlayer(player : PlayerObject) {
//        playerImage.layer.borderWidth   =   1
        playerImage.layer.cornerRadius  =   playerImage.frame.size.width / 2
        playerName.text                 =   player.name
        playerClub.text                 =   player.club
//        playerImage.layer.borderColor   =   UIColor.black.cgColor
        
        if let url : URL = URL(string: player.imageUrl) {
            getImage(imageUrl: url) { (UIImage) in
                self.playerImage.image  =   UIImage
            }
        }
    }
}
