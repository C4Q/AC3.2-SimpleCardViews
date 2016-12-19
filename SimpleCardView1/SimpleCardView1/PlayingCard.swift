//
//  PlayingCard.swift
//  SimpleCardView1
//
//  Created by Thinley Dorjee on 12/19/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class PlayingCard: UIView {

    @IBOutlet var view: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        UINib(nibName: "PlayingCard", bundle: nil).instantiate(withOwner: self, options: nil)
        addSubview(view)
        view.frame = self.bounds
    }

}
