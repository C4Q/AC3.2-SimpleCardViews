//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Erica Y Stevens on 12/18/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var aceCardView: CardView!
    @IBOutlet weak var kingCardView: CardView!
    @IBOutlet weak var queenCardView: CardView!
    @IBOutlet weak var jackCardView: CardView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        aceCardView.bottomRightCornerLabel.text = "A"
        aceCardView.topLeftCornerLabel.text = "A"
        aceCardView.cardImageView.image = UIImage(named: "3811")
        
        kingCardView.bottomRightCornerLabel.text = "K"
        kingCardView.topLeftCornerLabel.text = "K"
        kingCardView.cardImageView.image = UIImage(named: "9038-superman-superman-flying")
        
        queenCardView.bottomRightCornerLabel.text = "Q"
        queenCardView.topLeftCornerLabel.text = "Q"
        queenCardView.cardImageView.image = UIImage(named: "2688915-Harley_Quinn_by_I5Spiders")
        
        jackCardView.bottomRightCornerLabel.text = "J"
        jackCardView.topLeftCornerLabel.text = "J"
        jackCardView.cardImageView.image = UIImage(named: "34c7260c69cb6cb75ef13c05673222dc")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

