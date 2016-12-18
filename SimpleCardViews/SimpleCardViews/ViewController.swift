//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Sabrina Ip on 12/18/16.
//  Copyright © 2016 Sabrina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLeftView: CardView!
    @IBOutlet weak var topRightView: CardView!
    @IBOutlet weak var bottomLeftView: CardView!
    @IBOutlet weak var bottomRightView: CardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        topLeftView.topValueLabel.text = "J"
//        topLeftView.bottomValueLabel.text = "J"
//        topLeftView.cardImageView.image = UIImage(named: "Jack")
        setupCards()
    }
    
    func setupCards() {
        let cardViews = [topLeftView, topRightView, bottomLeftView, bottomRightView]
        let cardsArray = Card.loadCards()
        for (index, view) in cardViews.enumerated() {
            view?.topValueLabel.text = cardsArray[index].cardValue
            view?.bottomValueLabel.text = cardsArray[index].cardValue
            let imageString = cardsArray[index].cardImageString
            view?.cardImageView.image = UIImage(named: imageString)
        }
    }
}

