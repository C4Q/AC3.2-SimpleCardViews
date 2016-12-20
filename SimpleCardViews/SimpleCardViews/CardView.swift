//
//  CardView.swift
//  SimpleCardViews
//
//  Created by Edward Anchundia on 12/18/16.
//  Copyright © 2016 Edward Anchundia. All rights reserved.
//

import UIKit

class CardView: UIView {
    
    @IBOutlet var cardView: UIView!
    @IBOutlet weak var topLeftCardLabel: UILabel!
    @IBOutlet weak var bottomRightCardLabel: UILabel!
    @IBOutlet weak var centerImage: UIImageView!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        if let view = Bundle.main.loadNibNamed("CardView", owner: self, options: nil)?.first as? UIView {
            self.addSubview(view)
            view.frame = self.bounds
        }
    }

}
