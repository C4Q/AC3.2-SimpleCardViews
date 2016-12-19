//
//  CardView.swift
//  SimpleCardViews
//
//  Created by Erica Y Stevens on 12/18/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import UIKit

class CardView: UIView {

    @IBOutlet weak var topLeftCornerLabel: UILabel!
    
    @IBOutlet weak var cardImageView: UIImageView!
    
    @IBOutlet weak var bottomRightCornerLabel: UILabel!
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
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
