
//
//  CardView.swift
//  SimpleCardViews
//
//  Created by Annie Tung on 12/18/16.
//  Copyright © 2016 Annie Tung. All rights reserved.
//

import UIKit

class CardView: UIView {
    
    // update UI and setting the default card
    var card: String = "2" {
        didSet {
            self.topLeftLabel.text = card
            self.bottomRightLabel.text = card
            self.cardImage.image = UIImage(named: card)
        }
    }
    
    // MARK: - Properties
    
    // setting new properties on storyboard
    @IBInspectable var cornerRadius: CGFloat = 0.0
    @IBInspectable var borderWidth: CGFloat = 0.0
    @IBInspectable var borderColor: UIColor = UIColor.black
    
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var topLeftLabel: UILabel!
    @IBOutlet weak var bottomRightLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    // xib file
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // add to view hiearchy, embedding nib onto view
        if let contentView = Bundle.main.loadNibNamed("CardView", owner: self, options: nil)?.first as? UIView {
            self.addSubview(self.contentView)
            contentView.frame = self.bounds
            cardImage.layer.cornerRadius = 5.0
            cardImage.layer.borderWidth = 1.0
            cardImage.layer.borderColor = UIColor.gray.cgColor
            
            contentView.clipsToBounds = true
            self.backgroundColor = .clear
        }
    }
    
    override func awakeFromNib() {
        contentView.layer.cornerRadius = cornerRadius
        contentView.layer.borderWidth = borderWidth
        contentView.layer.borderColor = borderColor.cgColor
    }
}

