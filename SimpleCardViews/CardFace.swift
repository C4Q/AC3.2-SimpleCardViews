//
//  CardFace.swift
//  SimpleCardViews
//
//  Created by Marty Avedon on 12/17/16.
//  Copyright © 2016 Marty Hernandez Avedon. All rights reserved.
//

import UIKit

class CardFace: UIView {
    
    @IBOutlet weak var numbering: UILabel!
    @IBOutlet weak var suit: UILabel!
    @IBOutlet weak var numberingReversed: UILabel!
    @IBOutlet weak var suitReversed: UILabel!
    @IBOutlet weak var pic: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
 
        if let view = Bundle.main.loadNibNamed("CardFace", owner: self, options: nil)?.first as? UIView {
            self.addSubview(view)
            view.frame = self.bounds
        }
    }
}
