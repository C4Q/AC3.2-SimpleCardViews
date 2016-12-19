//
//  CardView.swift
//  SimpleCardViews
//
//  Created by Ana Ma on 12/18/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class CardView: UIView {

    @IBOutlet weak var number1LeftTopCornerLabel: UILabel!
    @IBOutlet weak var number2RightLowerCornerLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        if let view = Bundle.main.loadNibNamed("CardView", owner: self, options: nil)?.first as? UIView{
            self.addSubview(view)
            view.frame = self.bounds
        }
    }
}


