//
//  GetData.swift
//  seguePractice
//
//  Created by Marty Avedon on 12/7/16.
//  Copyright © 2016 Marty Hernandez Avedon. All rights reserved.
//

import UIKit

func getDataFrom(url: URL, callback: @escaping (_ data: Data?, _ response: URLResponse?,  _ error: Error?) -> Void) {
    URLSession.shared.dataTask(with: url) {
        (data, response, error) in
            callback(data, response, error)
    }.resume()
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
