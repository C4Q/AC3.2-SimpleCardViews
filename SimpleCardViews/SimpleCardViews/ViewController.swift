//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Harichandan Singh on 12/18/16.
//  Copyright © 2016 Harichandan Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var aceCardView: CardView!
    @IBOutlet weak var kingCardView: CardView!
    @IBOutlet weak var queenCardView: CardView!
    @IBOutlet weak var jackCardView: CardView!
    
    //MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.green
        setUpCards()
    }
    
    func setUpCards() {
        //self.aceCardView.cardImageView.image = UIImage(named: "Eli")
        self.aceCardView.cardImageView.image = #imageLiteral(resourceName: "Eli")
        self.aceCardView.topLeftLabel.text = "A"
        self.aceCardView.bottomRightLabel.text = "A"
        
        self.kingCardView.cardImageView.image = UIImage(named: "ODB")
        self.kingCardView.topLeftLabel.text = "K"
        self.kingCardView.bottomRightLabel.text = "K"
        
        self.queenCardView.cardImageView.image = UIImage(named: "JPP")
        self.queenCardView.topLeftLabel.text = "Q"
        self.queenCardView.bottomRightLabel.text = "Q"
        
        self.jackCardView.cardImageView.image = UIImage(named: "BenMac")
        self.jackCardView.topLeftLabel.text = "J"
        self.jackCardView.bottomRightLabel.text = "J"
    }
    
    
    
}

