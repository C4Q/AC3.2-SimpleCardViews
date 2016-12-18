//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Marty Avedon on 12/17/16.
//  Copyright © 2016 Marty Hernandez Avedon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var card1: CardFace!
    @IBOutlet weak var card2: CardFace!
    @IBOutlet weak var card3: CardFace!
    @IBOutlet weak var card4: CardFace!
    @IBOutlet weak var card5: CardFace!
    @IBOutlet weak var card6: CardFace!
    @IBOutlet weak var card7: CardFace!
    @IBOutlet weak var card8: CardFace!
    @IBOutlet weak var card9: CardFace!
    @IBOutlet weak var card10: CardFace!
    @IBOutlet weak var cardJ: CardFace!
    @IBOutlet weak var cardQ: CardFace!
    @IBOutlet weak var cardK: CardFace!
    
    let url = [URL(string: "https://s-media-cache-ak0.pinimg.com/originals/bd/91/01/bd9101d7b12356ab4bfa9e45ef67af68.jpg")]
    let suits = ["♠︎","♣︎","♥︎","♦︎"]
    let numbers = ["A","1","2","3","4","5","6","7","8","9","10","J","Q","K"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        card1.numbering.text = numbers[0]
        card1.numberingReversed.text = card1.numbering.text
        card1.suit.text = suits[0]
        card1.suitReversed.text = card1.suit.text
        
        card1.numberingReversed.transform = CGAffineTransform(rotationAngle: -CGFloat.pi)
        card1.suitReversed.transform = CGAffineTransform(rotationAngle: -CGFloat.pi)
        
        downloadImage(url: url[0]!)
        
    }

    func downloadImage(url: URL) {
        print("Download Started")
        getDataFrom(url: url) { (data, response, error)  in
            guard let data = data, error == nil else { return }
            print(response?.suggestedFilename ?? url.lastPathComponent)
            print("Download Finished")
            DispatchQueue.main.async() { () -> Void in
                // set a remote image for a normal image view
                self.card1.pic.image = UIImage(data: data)
            }
        }
    }
}

