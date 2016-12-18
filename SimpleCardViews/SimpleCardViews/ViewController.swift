//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Eric Chang on 12/18/16.
//  Copyright © 2016 Eric Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CardViewOne: CardOneView!
    @IBOutlet weak var CardViewTwo: CardOneView!
    @IBOutlet weak var CardViewThree: CardOneView!
    @IBOutlet weak var CardViewFour: CardOneView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
    }

    func loadData() {
        let views = [CardViewOne, CardViewTwo, CardViewThree, CardViewFour]
        for each in views {
            each?.topLabel.text = "A"
            each?.centerImageView.image = #imageLiteral(resourceName: "Sashimi")
            each?.bottomLabel.text = "K"
        }
    }


}

