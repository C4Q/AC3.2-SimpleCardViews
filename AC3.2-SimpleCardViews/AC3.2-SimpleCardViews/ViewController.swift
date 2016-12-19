//
//  ViewController.swift
//  AC3.2-SimpleCardViews
//
//  Created by Tom Seymour on 12/18/16.
//  Copyright © 2016 C4Q-3.2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardView1: CardView!
    @IBOutlet weak var cardView2: CardView!
    @IBOutlet weak var cardView3: CardView!
    @IBOutlet weak var cardView4: CardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardView1.label1.text = "J"
        cardView1.label2.text = "J"
        cardView1.imageView.image = #imageLiteral(resourceName: "jack")
        
        cardView2.label1.text = "Q"
        cardView2.label2.text = "Q"
        cardView2.imageView.image = #imageLiteral(resourceName: "queen")
        
        cardView3.label1.text = "K"
        cardView3.label2.text = "K"
        cardView3.imageView.image = #imageLiteral(resourceName: "king")
        
        cardView4.label1.text = "A"
        cardView4.label2.text = "A"
        cardView4.imageView.image = #imageLiteral(resourceName: "ace")
        
    }
}

