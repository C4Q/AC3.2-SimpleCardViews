//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Margaret Ikeda on 12/17/16.
//  Copyright © 2016 Margaret Ikeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardVIew: CardFaceView!
    
    let suits = ["♠", "♣", "♦", "♥"]
    var deckArray: [(String, String)] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        deckArray = createDeck(array1: suits, array2: createCards())
        print(deckArray)
    }
}
func createCards() -> [String] {
    var cardArray: [String] = []
    let nanCards = ["A", "J", "Q", "K"]
    var numberCards: [String] = []
    for i in 2...10 {
        numberCards.append(String(i))
    }
    cardArray = (nanCards + numberCards)
    return cardArray
}
func createDeck(array1: [String], array2: [String]) -> [(String, String)] {
    var deckArray: [(String, String)] = []
    for i in array1 {
        for j in array2 {
            deckArray.append((i, j))
        }
    }
    return deckArray
}

