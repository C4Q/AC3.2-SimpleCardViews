//: Playground - noun: a place where people can play

import UIKit

func createCards() -> [String] {
    var cardArray: [String] = []
    let nanCards = ["A", "J", "Q", "K"]
    var numberCards: [String] = []
    for i in 2...10 {
        numberCards.append(String(i))
    }
    cardArray = (nanCards + numberCards)
    print(cardArray)
    return cardArray
}

createCards()
let cardArray1 = createCards()
let suits = ["♠", "♣", "♦", "♥"]

func createDeck(array1: [String], array2: [String]) -> [String] {
    var deckArray: [String] = []
    for i in array1 {
        for j in array2 {
            deckArray.append(i + j)
        }
    }
    return deckArray
}
createDeck(array1: cardArray1, array2: suits)