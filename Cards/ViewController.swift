//
//  ViewController.swift
//  Cards
//
//  Created by Jason Gresh on 12/17/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let cards = ["Q", "K", "J", "8", "K"]
    
    @IBOutlet weak var topLeftCard: CardView!
    @IBOutlet weak var topRightCard: CardView!
    @IBOutlet weak var bottomLeftCard: CardView!
    @IBOutlet weak var bottomRightCard: CardView!
    @IBOutlet weak var wideCardView: CardView!
    override func viewDidLoad() {
        super.viewDidLoad()
        drawCards()
    }

    func drawCards() {
        self.topLeftCard.card = cards[0]
        self.topRightCard.card = cards[1]
        self.bottomLeftCard.card = cards[2]
        self.bottomLeftCard.contentView.backgroundColor = UIColor.red
        self.bottomRightCard.card = cards[3]
        self.wideCardView.card = cards[4]

    }
}

