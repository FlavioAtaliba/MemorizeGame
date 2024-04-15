//
//  MemoryGame.swift
//  MemorizeGame
//
//  Created by user249445 on 4/14/24.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card){
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent:  (Int) -> CardContent){
        cards = Array<Card>()
        //add a numberOfPairOfCards x 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card( content: content))
            cards.append(Card( content: content))
        }
    }
    
    struct Card {
        var isFaceup : Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
