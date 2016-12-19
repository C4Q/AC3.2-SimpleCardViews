//
//  CardView.swift
//  AC3.2-SimpleCardViews
//
//  Created by Tom Seymour on 12/18/16.
//  Copyright © 2016 C4Q-3.2. All rights reserved.
//

import UIKit

class CardView: UIView {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
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
