//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Annie Tung on 12/18/16.
//  Copyright © 2016 Annie Tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var card1: UIView!
    @IBOutlet weak var card2: UIView!
    @IBOutlet weak var card3: UIView!
    @IBOutlet weak var card4: UIView!
    
    var arrOfCardLabels = ["10", "3", "A", "9"]
    var arrOfCards = [#imageLiteral(resourceName: "card1"), #imageLiteral(resourceName: "card2"), #imageLiteral(resourceName: "card3"), #imageLiteral(resourceName: "card4")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewOfCards = [self.card1, self.card2, self.card3, self.card4]
        self.view.backgroundColor = .cyan
        
        //self.card1.topLeftLabel?.text = "10"
        //self.card1.cardImage.image = #imageLiteral(resourceName: "card1")
        
    }
}

