//
//  CardView.swift
//  Cards
//
//  Created by Jason Gresh on 12/17/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class CardView: UIView {
    var card: String = "2" {
        didSet {
            self.topLabel.text = card
            self.bottomLabel.text = card
            self.cardFaceImage.image = UIImage(named: card)
        }
    }
    @IBOutlet var contentView: UIView!
    @IBInspectable var cornerRadius: CGFloat = 0.0
    @IBInspectable var borderWidth: CGFloat = 0.0
    @IBInspectable var borderColor: UIColor = UIColor.black
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var cardFaceImage: UIImageView!
    @IBOutlet weak var bottomLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        if let contentView = Bundle.main.loadNibNamed("CardView", owner: self, options: nil)?.first as? UIView {
            self.addSubview(self.contentView)
            contentView.frame = self.bounds
            cardFaceImage.layer.cornerRadius = 5.0
            cardFaceImage.layer.borderWidth = 1.0
            cardFaceImage.layer.borderColor = UIColor.red.cgColor
            
            contentView.clipsToBounds = true
            self.backgroundColor = UIColor.clear
            
        }
    }
    
    override func awakeFromNib() {
        contentView.layer.cornerRadius = cornerRadius
        contentView.layer.borderWidth = borderWidth
        contentView.layer.borderColor = borderColor.cgColor
    }
}
