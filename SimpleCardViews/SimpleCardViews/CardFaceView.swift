//
//  CardFaceView.swift
//  SimpleCardViews
//
//  Created by Margaret Ikeda on 12/17/16.
//  Copyright © 2016 Margaret Ikeda. All rights reserved.
//

import UIKit

class CardFaceView: UIView {
    
    @IBOutlet weak var topSuitLabel: UILabel!
    @IBOutlet weak var topCardLabel: UILabel!
    @IBOutlet weak var bottomSuitLabel: UILabel!
    @IBOutlet weak var bottomCardLabel: UILabel!
    @IBOutlet weak var cardFaceImageView: UIImageView!
    
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
