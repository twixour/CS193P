//
//  MemoryGame.swift
//  CS193P
//
//  Created by Raushan Kashyap on 08/07/23.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>      // private(set) -> others can see the model but can't change it
    
    func choose(_ card: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0 ..< numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
