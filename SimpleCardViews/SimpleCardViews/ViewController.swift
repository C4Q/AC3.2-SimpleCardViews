//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Victor Zhong on 12/18/16.
//  Copyright © 2016 Victor Zhong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLeft: CardView!
    @IBOutlet weak var topRight: CardView!
    @IBOutlet weak var bottomLeft: CardView!
    @IBOutlet weak var bottomRight: CardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawViews()
    }
    
    func drawViews() {
        let views = [topLeft, topRight, bottomLeft, bottomRight]
        let deck: [(card: String, suit: String)] = [
            ("A♠︎", "spade"),
            ("A♥︎", "heart"),
            ("A♣︎", "club"),
            ("A♦︎", "diamond")
        ]
        
        for (index,card) in views.enumerated() {
            let drawnCard = deck[index]
           
            card?.topLabel.text = drawnCard.card
            card?.bottomLabel.text = drawnCard.card
         
            if drawnCard.suit == "diamond" || drawnCard.suit == "heart" {
                card?.topLabel.textColor = .red
                card?.bottomLabel.textColor = .red
            }
            
            card?.cardImage.image = UIImage(named: drawnCard.suit)
        }
    }
}

