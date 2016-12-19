//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Madushani Lekam Wasam Liyanage on 12/19/16.
//  Copyright © 2016 Madushani Lekam Wasam Liyanage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLeft: CardView!
    @IBOutlet weak var topRight: CardView!
    @IBOutlet weak var bottomLeft: CardView!
    @IBOutlet weak var bottomRight: CardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        let views = [topLeft, topRight, bottomLeft, bottomRight]
        let cards = ["A", "K", "Q", "J"]
        for (index, card) in views.enumerated() {
            
            card?.topLabel.text = cards[index]
            card?.bottomLabel.text = cards[index]
            card?.bottomLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            card?.imageView.image = UIImage(named: cards[index])
        }
    }
    
    
}

