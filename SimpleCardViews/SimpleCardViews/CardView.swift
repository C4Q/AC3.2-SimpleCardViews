//
//  CardView.swift
//  SimpleCardViews
//
//  Created by Victor Zhong on 12/19/16.
//  Copyright © 2016 Victor Zhong. All rights reserved.
//

import UIKit

class CardView: UIView {
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var cardImage: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        if let view = Bundle.main.loadNibNamed("CardView", owner: self, options: nil)?.first as? UIView {
            self.addSubview(view)
            view.frame = self.bounds
            
            bottomLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            view.layer.cornerRadius = 8.5
            view.layer.borderWidth = 1.0
            
        }
    }
}
