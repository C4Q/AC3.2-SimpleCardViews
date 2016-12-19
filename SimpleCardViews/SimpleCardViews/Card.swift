//
//  Card.swift
//  SimpleCardViews
//
//  Created by Sabrina Ip on 12/18/16.
//  Copyright © 2016 Sabrina. All rights reserved.
//

import Foundation

class Card {
    let cardValue: String
    let cardImageString: String
    
    init(cardValue: String, cardImageString: String) {
        self.cardValue = cardValue
        self.cardImageString = cardImageString
    }
    
    static func loadCards() -> [Card] {
        var cardsArray = [Card]()
        cardsArray.append(Card(cardValue: "J", cardImageString: "Jack"))
        cardsArray.append(Card(cardValue: "Q", cardImageString: "Queen"))
        cardsArray.append(Card(cardValue: "K", cardImageString: "King"))
        cardsArray.append(Card(cardValue: "A", cardImageString: "Ace"))
        return cardsArray
    }
}
