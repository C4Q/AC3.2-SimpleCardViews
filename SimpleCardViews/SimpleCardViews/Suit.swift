//
//  Suit.swift
//  SimpleCardViews
//
//  Created by Marty Avedon on 12/18/16.
//  Copyright © 2016 Marty Hernandez Avedon. All rights reserved.
//

import UIKit

enum Suit: Int {
    case Spade
    case Heart
    case Club
    case Diamond
    
    func symbol() -> String {
        switch self {
        case .Spade:
            return "♠︎"
        case .Heart:
            return "♥︎"
        case .Club:
            return "♣︎"
        case .Diamond:
            return "♦︎"
        }
    }
    
    func color() -> UIColor {
        if self == .Club || self == .Spade {
            return .black
        } else {
            return .red
        }
    }
}
