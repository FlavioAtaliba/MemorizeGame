//
//  EmojiMemoryGame.swift
//  MemorizeGame
//
//  Created by user249445 on 4/14/24.
//

import SwiftUI


class EmojiMemoryGame {
    
    static let emojis = ["😊", "🌟", "🎉", "🌈", "🍀", "🌺", "🎈", "🎶", "🎁", "🌼", "🌞", "🌍", "🎨", "📚", "💡", "🍔", "🚀", "🎲", "🎸", "🎭"]
    // static works like a global var in this case, thou can be inicialize before defines model
    // static is a type propertie or type valuable

    static func createMemoryGame () -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4){ pairIndex in EmojiMemoryGame.emojis [pairIndex] }
    // or {pairIndex in emojis[pairIndex] }
    // static is a type function , its cotained in the class itself
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    // is the same as MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    
        
    var cards: Array<MemoryGame<String>.Card>{
         model.cards
    }
    //MARK: - Intent(s)
    func choose(_ card: MemoryGame<String>.Card){
        model.choose(card)
    }
}
