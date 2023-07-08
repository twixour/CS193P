//
//  EmojiMemoryGame.swift
//  CS193P
//
//  Created by Raushan Kashyap on 08/07/23.
//

import SwiftUI



class EmojiMemoryGame {
    private var model: MemoryGame<String> =
    MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: {index  in  return "😀" })
    
    init(model: MemoryGame<String>) {
        self.model = model
    }
}
