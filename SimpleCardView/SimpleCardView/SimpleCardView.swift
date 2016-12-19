//
//  SimpleCardView.swift
//  SimpleCardView
//
//  Created by C4Q on 12/19/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class SimpleCardView: UIView {

    @IBOutlet weak var textLabelOne: UILabel!
    @IBOutlet weak var textLabelTwo: UILabel!
    @IBOutlet weak var cardImageView: UIImageView!
    
    var stuff: (UIImage, String)?
    
    func setUp () {
        if let validStuff = self.stuff {
            self.textLabelOne.text = validStuff.1
            self.textLabelTwo.text = validStuff.1
            self.cardImageView.image = validStuff.0
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        if let view = Bundle.main.loadNibNamed("SimpleCardView", owner: self, options: nil)?.first as? UIView {
                self.addSubview(view)
                view.frame = self.bounds
        }
    } 
}
