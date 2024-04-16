//
//  MemoryGame.swift
//  MemorizeGame
//
//  Created by user249445 on 4/14/24.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    mutating func choose(_ card: Card){
        let chosenIndex = index(of: card)
        cards[chosenIndex].isFaceup.toggle()
        print("hellow")
    }
    
    func index(of card : Card) -> Int {
        for index in 0..<cards.count{
            if cards[index].id == card.id{
                return index
            }
        }
        return 0
    }
    
    init(numberOfPairsOfCards: Int, createCardContent:  (Int) -> CardContent){
        cards = Array<Card>()
        //add a numberOfPairOfCards x 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceup : Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
