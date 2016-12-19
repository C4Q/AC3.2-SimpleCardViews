//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Margaret Ikeda on 12/17/16.
//  Copyright © 2016 Margaret Ikeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cardView: CardFaceView!
    @IBOutlet weak var cardFaceView3: CardFaceView!
    @IBOutlet weak var cardFaceView2: CardFaceView!
    @IBOutlet weak var cardFaceView4: CardFaceView!
    
    var deckArray: [(String, String)] = []
    var cardArray: [String] = []
    let suits = ["♠", "♣", "♦", "♥"]

    override func viewDidLoad() {
        super.viewDidLoad()
        let views = [cardView, cardFaceView2, cardFaceView3, cardFaceView4]
        CardFaceView.loopViews(views: views as! [CardFaceView], deckArray: CardFaceView.createDeck(cardArray: CardFaceView.createCards(), suits: suits))
    }
}
