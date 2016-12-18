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
    @IBOutlet weak var image: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
