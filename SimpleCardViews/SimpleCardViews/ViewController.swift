//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Kadell on 12/18/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardOneView: CardView!
    @IBOutlet weak var cardTwoView: CardView!
    @IBOutlet weak var cardThreeView: CardView!
    @IBOutlet weak var cardFourView: CardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func getData() {
    
        var counter = 0
        
    let view = [cardOneView, cardTwoView, cardThreeView, cardFourView]
    let cardLabel = ["Q", "K", "J", "A"]
    let images = [#imageLiteral(resourceName: "Bush"),#imageLiteral(resourceName: "chocolate"),#imageLiteral(resourceName: "holy"),#imageLiteral(resourceName: "basketball")]
        
        for cards in view {
            cards?.cardImageView.image = images[counter]
            cards?.topLabel.text = cardLabel[counter]
            cards?.bottomLabel.text = cardLabel[counter]
            counter += 1
        }
    
    }
}

