//
//  ViewController.swift
//  SimpleCardView
//
//  Created by C4Q on 12/18/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ace: SimpleCardView!
    @IBOutlet weak var king: SimpleCardView!
    @IBOutlet weak var queen: SimpleCardView!
    @IBOutlet weak var jack: SimpleCardView!
    
    
    let images = [#imageLiteral(resourceName: "Oculus"),
                  #imageLiteral(resourceName: "Coins"),
                  #imageLiteral(resourceName: "Tumblr"),
                  #imageLiteral(resourceName: "Magnus")]
    let cards = ["A", "K", "Q", "J"]

    override func viewDidLoad() {
        super.viewDidLoad()
        let views = [self.ace, self.king, self.queen, self.jack]
        
        for (index, view) in views.enumerated() {
            guard let view = view else { continue }
            view.stuff = (images[index], cards[index])
            view.setUp()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

