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
    
    let url = [URL(string: "https://s-media-cache-ak0.pinimg.com/originals/bd/91/01/bd9101d7b12356ab4bfa9e45ef67af68.jpg"), URL(string: "http://haseebq.com/wordpress/wp-content/uploads/2014/01/things.jpg"), URL(string: "http://3.bp.blogspot.com/-LRAWJ9E1gDc/VMY4iZyT7oI/AAAAAAAAB-E/YSgQwWDO5HI/s1600/7.png"), URL(string: "http://totally-90s.com/wp-content/uploads/2014/02/tetris4.jpg"), URL(string: "http://www.homespunhearth.com/images/Newsletter/Xmas-5.jpg"), URL(string: "http://www.wpclipart.com/signs_symbol/shapes/star_6_point.png"), URL(string: "https://www.drpeppersnapplegroup.com/smedia/www/2011/04/12/img-7up-breakout-box-4-spot_144621699059.png"), URL(string: "http://www.table8.org/8ball_big.jpg"), URL(string: "https://s-media-cache-ak0.pinimg.com/originals/b2/d3/03/b2d30374872aa40ae70439a8539ae8bf.jpg"), URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Interlaced_ten-point_star_in_irregular_decagon.svg/814px-Interlaced_ten-point_star_in_irregular_decagon.svg.png"), URL(string: "http://pre01.deviantart.net/0968/th/pre/f/2009/180/b/6/jack_skellington_6_by_carlibux.jpg"), URL(string: "http://img.wennermedia.com/article-leads-vertical-380/beyonce-zoom-f0ce8492-6c83-4074-a7d9-963aea4bfadf.jpg"), URL(string: "http://www.tastyburger.com/wp-content/themes/tastyBurger/images/home/img-large-burger.jpg")]
    let suits = ["♠︎","♥︎","♣︎","♦︎"]
    let numbers = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cards = [card1!,card2!,card3!,card4!,card5!,card6!,card7!,card8!,card9!,card10!,cardJ!,cardQ!,cardK!]
        
        labelCards(cards: cards, suits: suits, numbers: numbers)
    }

    func downloadImage(url: URL, card: CardFace) {
        print("Download Started")
        getDataFrom(url: url) { (data, response, error)  in
            guard let data = data, error == nil else { return }
            print(response?.suggestedFilename ?? url.lastPathComponent)
            print("Download Finished")
            DispatchQueue.main.async() { () -> Void in
                // set a remote image for a normal image view
                card.pic.image = UIImage(data: data)
            }
        }
    }
    
    func labelCards(cards: [CardFace], suits: [String], numbers: [String]) {
        for index in 0..<cards.count {
            cards[index].numbering.text = numbers[index % numbers.count]
            cards[index].numberingReversed.text = cards[index].numbering.text
            cards[index].suit.text = suits[index % suits.count]
            cards[index].suitReversed.text = cards[index].suit.text
            
            downloadImage(url: url[index % url.count]!, card: cards[index])
            
            let color: UIColor
            
            if cards[index].suit.text == "♠︎" || cards[index].suit.text == "♣︎" {
                color = .black
            } else {
                color = .red
            }
            
            cards[index].suit.textColor = color
            cards[index].suitReversed.textColor = color
            cards[index].numbering.textColor = color
            cards[index].numberingReversed.textColor = color
        }
    }
}

