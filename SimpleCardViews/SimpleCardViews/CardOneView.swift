//
//  CardOneView.swift
//  SimpleCardViews
//
//  Created by Eric Chang on 12/18/16.
//  Copyright © 2016 Eric Chang. All rights reserved.
//

import UIKit

class CardOneView: UIView {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var centerImageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        if let view = Bundle.main.loadNibNamed("CardOneView", owner: self, options: nil)?.first as? UIView {
            self.addSubview(view)
            view.frame = self.bounds
        }
    }
}
