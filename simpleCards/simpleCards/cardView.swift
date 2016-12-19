//
//  cardView.swift
//  simpleCards
//
//  Created by Amber Spadafora on 12/18/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class cardView: UIView {
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var cardImage: UIImageView!
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        if let view = Bundle.main.loadNibNamed("cardView", owner: self, options: nil)?.first as? UIView {
            self.addSubview(view)
            view.frame = self.bounds
            let black = UIColor.black
            view.layer.borderColor = black.cgColor
            view.layer.borderWidth = 2.0
        }
    }
    
}
