//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Annie Tung on 12/18/16.
//  Copyright © 2016 Annie Tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var card1: CardView!
    @IBOutlet weak var card2: CardView!
    @IBOutlet weak var card3: CardView!
    @IBOutlet weak var card4: CardView!
    
    var arrOfCardLabels = ["10", "3", "A", "9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 1, green: 0.8667, blue: 0.9059, alpha: 1.0)
        drawCards()
        
    }
    
    func drawCards() {
        self.card1.card = arrOfCardLabels[0]
        self.card2.card = arrOfCardLabels[1]
        self.card3.card = arrOfCardLabels[2]
        self.card4.card = arrOfCardLabels[3]
    }
}

