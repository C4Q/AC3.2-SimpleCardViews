//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Edward Anchundia on 12/18/16.
//  Copyright © 2016 Edward Anchundia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLeftCard: CardView!
    @IBOutlet weak var topRightCard: CardView!
    @IBOutlet weak var bottomLeftCard: CardView!
    @IBOutlet weak var bottomRightCard: CardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        
        topLeftCard.bottomRightCardLabel.text = "Q"
        topLeftCard.topLeftCardLabel.text = "Q"
        topLeftCard.centerImage.image = #imageLiteral(resourceName: "random_character__cake_dude_by_mnrart-d7jydot")
            
        topRightCard.topLeftCardLabel.text = "K"
        topRightCard.bottomRightCardLabel.text = "K"
        topRightCard.centerImage.image = #imageLiteral(resourceName: "Xzp_27")
        
        bottomLeftCard.topLeftCardLabel.text = "J"
        bottomLeftCard.bottomRightCardLabel.text = "J"
        bottomLeftCard.centerImage.image = #imageLiteral(resourceName: "7")
        
        bottomRightCard.topLeftCardLabel.text = "A"
        bottomRightCard.bottomRightCardLabel.text = "A"
        bottomRightCard.centerImage.image = #imageLiteral(resourceName: "37189054-random-image")
    }

}

