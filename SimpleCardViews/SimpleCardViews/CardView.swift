//
//  CardView.swift
//  SimpleCardViews
//
//  Created by Sabrina Ip on 12/18/16.
//  Copyright © 2016 Sabrina. All rights reserved.
//

import UIKit

class CardView: UIView {

    @IBOutlet weak var topValueLabel: UILabel!
    @IBOutlet weak var bottomValueLabel: UILabel!
    @IBOutlet weak var cardImageView: UIImageView!

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
