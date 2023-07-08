//
//  EmojiMemoryGame.swift
//  CS193P
//
//  Created by Raushan Kashyap on 08/07/23.
//

import SwiftUI

func makeCardContent(index: Int) -> String {
    return "😀"
}

class EmojiMemoryGame {
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: makeCardContent)
    
    init(model: MemoryGame<String>) {
        self.model = model
    }
}
