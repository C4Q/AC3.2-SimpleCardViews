//
//  OtherViewController.swift
//  SimpleCardViews
//
//  Created by Marty Avedon on 12/18/16.
//  Copyright © 2016 Marty Hernandez Avedon. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {

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
    
    @IBOutlet weak var changeArrangement: UIButton!
    
    var circleOcards = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cards = [card1!,card2!,card3!,card4!,card5!,card6!,card7!,card8!,card9!,card10!,cardJ!,cardQ!,cardK!]
        
        CardFace.label(cards)
        
        startingArrangement(cards)
    }
    
    func startingArrangement(_ cards: [CardFace]) {
        for index in 0..<cards.count {
            cards[index].heightAnchor.constraint(equalToConstant: 150).isActive = true
            cards[index].widthAnchor.constraint(equalTo: cards[index].heightAnchor, multiplier: 5/7).isActive = true
            cards[index].leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            cards[index].centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            cards[index].translatesAutoresizingMaskIntoConstraints = false
            cards[index].layer.zPosition = CGFloat(index)
        }
    }
    
    func returnToPile(_ cards: [CardFace]) {
        startingArrangement(cards)
        for index in 0..<cards.count {
            let angle = 0.48 * Double(index + 1)
            cards[index].transform = CGAffineTransform(rotationAngle: -CGFloat(angle))
        }
    }
    
    func splayOut(_ cards: [CardFace]) {
        // ... add as many as you want, then apply it to to the view
        for index in 0..<cards.count {
            let angle = 0.10 * Double(index + 1)
            var t = CGAffineTransform.identity
            t = t.translatedBy(x: CGFloat(20 * index), y: CGFloat(0))
            t = t.rotated(by: CGFloat(angle))
            cards[index].leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40)
            cards[index].transform = t
            }
    }
    
    @IBAction func alterArrangement(_ sender: UIButton) {
        let cards = [card1!,card2!,card3!,card4!,card5!,card6!,card7!,card8!,card9!,card10!,cardJ!,cardQ!,cardK!]
        
        if circleOcards == false {
            splayOut(cards)
        } else {
            returnToPile(cards)
        }
        
        circleOcards = !circleOcards
    }
    

}
