//
//  CardView.swift
//  SimpleCardViews
//
//  Created by Annie Tung on 12/18/16.
//  Copyright © 2016 Annie Tung. All rights reserved.
//

import UIKit

class CardView: UIView {

    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var topLeftLabel: UILabel!
    @IBOutlet weak var bottomRightLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    // xib file
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        if let view = Bundle.main.loadNibNamed("CardView", owner: self, options: nil)?.first as? UIView {
            self.addSubview(view)
            view.frame = self.bounds
        }
    }
}
