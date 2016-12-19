//
//  CardView.swift
//  SimpleCardViews
//
//  Created by Marcel Chaucer on 12/17/16.
//  Copyright © 2016 Marcel Chaucer. All rights reserved.
//

import UIKit

class CardView: UIView {
    @IBOutlet weak var topLeftLabel: UILabel!
    @IBOutlet weak var bottomRightLabel: UILabel!
    @IBOutlet weak var cardImage: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        if let view = Bundle.main.loadNibNamed("CardView", owner: self, options: nil)!.first as? UIView {
            self.addSubview(view)
            view.frame = self.bounds
        }
    }
}
