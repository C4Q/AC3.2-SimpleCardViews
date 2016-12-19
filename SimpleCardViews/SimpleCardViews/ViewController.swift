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

    @IBOutlet weak var cardView2: CardFaceView!
    
    @IBOutlet weak var cardView3: CardFaceView!
    
    @IBOutlet weak var cardView4: CardFaceView!
    
    var deckArray: [(String, String)] = []
    var cardArray: [String] = []
    let suits = ["♠", "♣", "♦", "♥"]
    let views: [CardFaceView] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        let views = [cardView!, cardView2!, cardView3!, cardView4!]
        CardFaceView.loopViews(views: views)
//        let image: [String] = [
//            "david",
//            "erica",
//            "mira",
//            "cris"
//        ]
//        CardFaceView.loopViews(views: views as! [CardFaceView], deckArray: CardFaceView.createDeck(cardArray: CardFaceView.createCards(), suits: suits), image: image)
    }
}
