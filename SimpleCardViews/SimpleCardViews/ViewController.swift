//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Cris on 12/18/16.
//  Copyright © 2016 Cris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLeftView: CardView!
    @IBOutlet weak var topRightView: CardView!
    @IBOutlet weak var bottomLeftView: CardView!
    @IBOutlet weak var bottomRightView: CardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
/*        loadTopLeftView()
        loadtopRightView()
        loadBottomLeftView()
        loadBottomRightView()
 */
        loopViews()
    }
    
    func loopViews() {
        let views = [topRightView, topLeftView, bottomLeftView, bottomRightView]
        let suits = ["K", "Q", "J", "A"]
        let image: [String] = ["spadeIcon", "spadeIcon", "spadeIcon", "spadeIcon"]
        for (index, view) in views.enumerated() {
            view?.topLetterLabel.text = suits[index]
            view?.bottomLetterLabel.text = suits[index]
            view?.centerImageView.image = UIImage(named: image[index])
        }
    }
    
    
    func loadTopLeftView() {
        topLeftView.topLetterLabel.text = "K"
        topLeftView.bottomLetterLabel.text = "K"
        topLeftView.centerImageView.image = UIImage(named: "spadeIcon")
    }
    
    func loadtopRightView() {
        topRightView.topLetterLabel.text = "Q"
        topRightView.bottomLetterLabel.text = "Q"
        topRightView.centerImageView.image = UIImage(named: "spadeIcon")
    }
    
    func loadBottomLeftView() {
        bottomLeftView.topLetterLabel.text = "J"
        bottomLeftView.bottomLetterLabel.text = "J"
        bottomLeftView.centerImageView.image = UIImage(named: "spadeIcon")
    }
    
    func loadBottomRightView() {
        bottomRightView.topLetterLabel.text = "A"
        bottomRightView.bottomLetterLabel.text = "A"
        bottomRightView.centerImageView.image = UIImage(named: "spadeIcon")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}

