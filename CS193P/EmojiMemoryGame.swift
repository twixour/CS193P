//
//  EmojiMemoryGame.swift
//  CS193P
//
//  Created by Raushan Kashyap on 08/07/23.
//

import SwiftUI

class EmojiMemoryGame {
    private(set) var model: MemoryGame<String>        // private(set) -> others can see the model but can't change it
    
    init(model: MemoryGame<String>) {
        self.model = model
    }
}
