//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Marcel Chaucer on 12/17/16.
//  Copyright © 2016 Marcel Chaucer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var bottomLeftCard: CardView!
    @IBOutlet weak var topLeftCard: CardView!
    @IBOutlet weak var topRightCard: CardView!
    @IBOutlet weak var bottomRightCard: CardView!
      var cardProperties = [("J", #imageLiteral(resourceName: "Ken")), ("K", #imageLiteral(resourceName: "Alucard")), ("Q", #imageLiteral(resourceName: "Mugen")), ("10", #imageLiteral(resourceName: "Megaman"))]
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        var allTheCards = [self.bottomLeftCard, self.bottomRightCard, self.topLeftCard, self.topRightCard]
        self.view.backgroundColor = UIColor.green
        for cardViews in 0...3 {
            allTheCards[cardViews]?.bottomRightLabel.text = cardProperties[cardViews].0
            allTheCards[cardViews]?.topLeftLabel.text = cardProperties[cardViews].0
            allTheCards[cardViews]?.cardImage.image = cardProperties[cardViews].1
        }
    }

  

}

