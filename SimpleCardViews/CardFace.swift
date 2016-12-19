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
    
    static let suits = ["♠︎","♥︎","♣︎","♦︎"]
    static let numbers = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    static let imageURLs: [Any] = [
        [
            // ace of spades
            URL(string: "https://s-media-cache-ak0.pinimg.com/originals/bd/91/01/bd9101d7b12356ab4bfa9e45ef67af68.jpg")!
            // ace of hearts
            , URL(string: "https://s-media-cache-ak0.pinimg.com/originals/b3/b8/6a/b3b86adccb422d7cf8f1d626e4f33542.jpg")!
            // ace of clubs
            , URL(string: "http://www.medicofem.com/wp-content/uploads/2015/09/BioHazard-300x282.png")!
            // ace of diamonds
            , URL(string: "https://40.media.tumblr.com/808fcc5db169c7c4078c449a8b0b3eda/tumblr_nq0zxsS8cf1s6jjxfo1_500.png")!
        ]
        // two
        , URL(string: "http://haseebq.com/wordpress/wp-content/uploads/2014/01/things.jpg")!
        // three
        , URL(string: "http://3.bp.blogspot.com/-LRAWJ9E1gDc/VMY4iZyT7oI/AAAAAAAAB-E/YSgQwWDO5HI/s1600/7.png")!
        // four
        , URL(string: "http://totally-90s.com/wp-content/uploads/2014/02/tetris4.jpg")!
        // five
        , URL(string: "http://www.homespunhearth.com/images/Newsletter/Xmas-5.jpg")!
        // six
        , URL(string: "http://www.wpclipart.com/signs_symbol/shapes/star_6_point.png")!
        // seven
        , URL(string: "https://www.drpeppersnapplegroup.com/smedia/www/2011/04/12/img-7up-breakout-box-4-spot_144621699059.png")!
        // eight
        , URL(string: "http://www.table8.org/8ball_big.jpg")!
        // nine
        , URL(string: "https://s-media-cache-ak0.pinimg.com/originals/b2/d3/03/b2d30374872aa40ae70439a8539ae8bf.jpg")!
        // ten
        , URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Interlaced_ten-point_star_in_irregular_decagon.svg/814px-Interlaced_ten-point_star_in_irregular_decagon.svg.png")!
        // jack
        , URL(string: "http://pre01.deviantart.net/0968/th/pre/f/2009/180/b/6/jack_skellington_6_by_carlibux.jpg")!
        // queen
        , URL(string: "http://img.wennermedia.com/article-leads-vertical-380/beyonce-zoom-f0ce8492-6c83-4074-a7d9-963aea4bfadf.jpg")!
        // king
        , URL(string: "http://www.tastyburger.com/wp-content/themes/tastyBurger/images/home/img-large-burger.jpg")!
    ]
    
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
            
            // this bit turns the suit & num upside down -- the units are in radians
            numberingReversed.transform = CGAffineTransform(rotationAngle: -CGFloat.pi)
            suitReversed.transform = CGAffineTransform(rotationAngle: -CGFloat.pi)
        }
    }
    
    static func label(_ card: CardFace, magicNumber: Int) {
        card.numbering.text = numbers[magicNumber % numbers.count]
        card.numberingReversed.text = card.numbering.text
        card.suit.text = suits[magicNumber % suits.count]
        card.suitReversed.text = card.suit.text
        
        if magicNumber % suits.count != 0 {
            downloadImage(url: imageURLs[magicNumber % imageURLs.count] as! URL, card: card)
        } else {
            let correctAce: Int
            switch card.suit.text! {
            case "♠︎":
                correctAce = 0
            case "♥︎":
                correctAce = 1
            case "♣︎":
                correctAce = 2
            case "♦︎":
                correctAce = 3
            default:
                correctAce = 0
            }
            let innerArr = imageURLs[0] as! [URL]
            downloadImage(url: innerArr[correctAce], card: card)
        }
        
        let color: UIColor
        
        if card.suit.text == "♠︎" || card.suit.text == "♣︎" {
            color = .black
        } else {
            color = .red
        }
        
        card.suit.textColor = color
        card.suitReversed.textColor = color
        card.numbering.textColor = color
        card.numberingReversed.textColor = color
    }
    
    static func label(_ cards: [CardFace]) {
        for index in 0..<cards.count {
            label(cards[index], magicNumber: index)
        }
    }
}
