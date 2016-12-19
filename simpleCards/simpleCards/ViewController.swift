//
//  ViewController.swift
//  simpleCards
//
//  Created by Amber Spadafora on 12/18/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var King: cardView!
    @IBOutlet weak var Queen: cardView!
    @IBOutlet weak var Jack: cardView!
    @IBOutlet weak var Ace: cardView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        King.topLabel.text = "K"
        King.bottomLabel.text = "K"
        King.cardImage.image = #imageLiteral(resourceName: "king")
        Queen.bottomLabel.text = "Q"
        Queen.topLabel.text = "Q"
        Queen.cardImage.image = #imageLiteral(resourceName: "miaWallace")
        Jack.topLabel.text = "J"
        Jack.bottomLabel.text = "J"
        Jack.cardImage.image = #imageLiteral(resourceName: "brucewillis")
        Ace.topLabel.text = "A"
        Ace.bottomLabel.text = "A"
        Ace.cardImage.image = #imageLiteral(resourceName: "pulp")
    }




}

