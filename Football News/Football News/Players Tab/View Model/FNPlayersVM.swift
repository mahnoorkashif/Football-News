//
//  FNPlayersVC.swift
//  Football News
//
//  Created by Mahnoor Khan on 18/07/2019.
//  Copyright © 2019 Mahnoor Khan. All rights reserved.
//

import Foundation

class FNPlayersVM {
    // MARK: Properties
    var model       : [PlayerObject]?
    var itemCount   : Int {
        get {
            return model?.count ?? 0
        }
    }
    
    // MARK: Initializer
    init() {
        self.model = FNDataManager.shared.playersModel
    }
}

// MARK: Accessing Model Objects
extension FNPlayersVM {
    func itemAt(_ indexPath: IndexPath) -> PlayerObject? {
        guard let _model = model, itemCount > 0 else { return nil }
        return _model[indexPath.row]
    }
}
