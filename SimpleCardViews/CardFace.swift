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
    @IBOutlet weak var pic: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
 
        if let view = Bundle.main.loadNibNamed("CardFace", owner: self, options: nil)?.first as? UIView {
            self.addSubview(view)
            view.frame = self.bounds
            
            layer.borderWidth = 2
            layer.borderColor = UIColor.black.cgColor
            
            numberingReversed.transform = CGAffineTransform(rotationAngle: -CGFloat.pi)
            suitReversed.transform = CGAffineTransform(rotationAngle: -CGFloat.pi)

        }
    }
    
    static func label(_ cards: [CardFace]) {
        let url = [URL(string: "https://s-media-cache-ak0.pinimg.com/originals/bd/91/01/bd9101d7b12356ab4bfa9e45ef67af68.jpg"), URL(string: "http://haseebq.com/wordpress/wp-content/uploads/2014/01/things.jpg"), URL(string: "http://3.bp.blogspot.com/-LRAWJ9E1gDc/VMY4iZyT7oI/AAAAAAAAB-E/YSgQwWDO5HI/s1600/7.png"), URL(string: "http://totally-90s.com/wp-content/uploads/2014/02/tetris4.jpg"), URL(string: "http://www.homespunhearth.com/images/Newsletter/Xmas-5.jpg"), URL(string: "http://www.wpclipart.com/signs_symbol/shapes/star_6_point.png"), URL(string: "https://www.drpeppersnapplegroup.com/smedia/www/2011/04/12/img-7up-breakout-box-4-spot_144621699059.png"), URL(string: "http://www.table8.org/8ball_big.jpg"), URL(string: "https://s-media-cache-ak0.pinimg.com/originals/b2/d3/03/b2d30374872aa40ae70439a8539ae8bf.jpg"), URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Interlaced_ten-point_star_in_irregular_decagon.svg/814px-Interlaced_ten-point_star_in_irregular_decagon.svg.png"), URL(string: "http://pre01.deviantart.net/0968/th/pre/f/2009/180/b/6/jack_skellington_6_by_carlibux.jpg"), URL(string: "http://img.wennermedia.com/article-leads-vertical-380/beyonce-zoom-f0ce8492-6c83-4074-a7d9-963aea4bfadf.jpg"), URL(string: "http://www.tastyburger.com/wp-content/themes/tastyBurger/images/home/img-large-burger.jpg")]
        let suits = ["♠︎","♥︎","♣︎","♦︎"]
        let numbers = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
        
        for index in 0..<cards.count {
            cards[index].numbering.text = numbers[index % numbers.count]
            cards[index].numberingReversed.text = cards[index].numbering.text
            cards[index].suit.text = suits[index % suits.count]
            cards[index].suitReversed.text = cards[index].suit.text
            
            downloadImage(url: url[index % url.count]!, card: cards[index])
            
            let color: UIColor
            
            if cards[index].suit.text == "♠︎" || cards[index].suit.text == "♣︎" {
                color = .black
            } else {
                color = .red
            }
            
            cards[index].suit.textColor = color
            cards[index].suitReversed.textColor = color
            cards[index].numbering.textColor = color
            cards[index].numberingReversed.textColor = color
        }
    }
}
