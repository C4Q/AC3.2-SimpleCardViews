//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Ana Ma on 12/17/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardView1: CardView!
    @IBOutlet weak var cardView2: CardView!
    @IBOutlet weak var cardView3: CardView!
    @IBOutlet weak var cardView4: CardView!
    var arrayOfCards = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    
    let randomImageURLString = "https://unsplash.it/200/300/?random"
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.blue
        let arrayOfCardView = [self.cardView1, self.cardView2, self.cardView3, self.cardView4]
        super.viewDidLoad()
        var counter = 0
        for view in arrayOfCardView {
            APIRequestManager.shared.getData(endpoint: randomImageURLString) { (data) in
                if let validData = data,
                    let validView = UIImage(data: validData) {
                    DispatchQueue.main.async {
                        view?.number1LeftTopCornerLabel.text = self.arrayOfCards[counter]
                        view?.number2RightLowerCornerLabel.text = self.arrayOfCards[counter]
                        view?.imageView.image = validView
                        self.view.reloadInputViews()
                        counter += 1
                    }
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

