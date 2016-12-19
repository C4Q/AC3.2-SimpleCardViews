//
//  CardView.swift
//  SimpleCardViews
//
//  Created by Harichandan Singh on 12/18/16.
//  Copyright © 2016 Harichandan Singh. All rights reserved.
//

import UIKit

class CardView: UIView {
    //MARK: - Outlets
    @IBOutlet weak var topLeftLabel: UILabel!
    @IBOutlet weak var bottomRightLabel: UILabel!
    @IBOutlet weak var cardImageView: UIImageView!
    
    //MARK: - Initializers
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
