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
    
//    static func createCards() -> [String] {
//        var cardArray: [String] = []
//        let nanCards = ["A", "J", "Q", "K"]
//        var numberCards: [String] = []
//        for i in 2...10 {
//            numberCards.append(String(i))
//        }
//        cardArray = (nanCards + numberCards)
//        return cardArray
//    }
//    static func createDeck(cardArray: [String], suits: [String]) -> [(String, String)] {
//        var deckArray: [(String, String)] = []
//        for i in cardArray {
//            for j in suits {
//                deckArray.append((i, j))
//            }
//        }
//        return deckArray
//    }
//    static func loopViews(views: [CardFaceView], deckArray: [(String, String)], image: [String]) {
//        for i in 0...views.count - 1 {
//            views[i].topCardLabel.text = deckArray[i % deckArray.count].0
//            views[i].topSuitLabel.text = deckArray[i % deckArray.count].1
//            views[i].bottomCardLabel.text = deckArray[i % deckArray.count].0
//            views[i].bottomSuitLabel.text = deckArray[i % deckArray.count].1
//            views[i].cardFaceImageView.image = UIImage(named: (String(image[i % image.count])))
//        }
//    }
    static func loopViews(views: [CardFaceView]) {
        let suits = ["♠", "♣", "♦", "♥"]
        let imageArray: [String] = ["david", "erica", "mira", "cris"]
        for (index, view) in views.enumerated() {
            view.topCardLabel.text = "A"
            view.topSuitLabel.text = suits[index]
            view.bottomSuitLabel.text = suits[index]
            view.bottomCardLabel.text = "A"
            view.cardFaceImageView.image = UIImage(named: imageArray[index])
        }
    }
}
