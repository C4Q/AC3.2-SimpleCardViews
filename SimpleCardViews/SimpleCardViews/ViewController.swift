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
    let url = URL(string: "http://vignette4.wikia.nocookie.net/scribblenauts/images/4/42/Crash_Test_Dummy.png/revision/latest?cb=20130309213400")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        card1.numbering.text = "A"
        card1.numberingReversed.text = "A"
        card1.suit.text = "♠︎"
        card1.suitReversed.text = "♠︎"
        
        card1.numberingReversed.transform = CGAffineTransform(rotationAngle: -CGFloat.pi)
        card1.suitReversed.transform = CGAffineTransform(rotationAngle: -CGFloat.pi)
        
        downloadImage(url: url!)
        
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

