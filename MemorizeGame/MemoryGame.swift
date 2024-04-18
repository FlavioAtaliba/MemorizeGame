//
//  MemoryGame.swift
//  MemorizeGame
//
//  Created by user249445 on 4/14/24.
//

import Foundation

/// <#Description#>
struct MemoryGame<CardContent> where CardContent: Equatable {
    private(set) var cards: Array<Card>
    
    private var indexOfTheOneAndOnlyFaceupCard: Int?
    
    mutating func choose(_ card: Card) {
//        if let chosenIndex = index(of: card){
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id}),
           !cards[chosenIndex].isFaceup,
           !cards[chosenIndex].isMatched
        {
            if let potentionalMatchIndex = indexOfTheOneAndOnlyFaceupCard {
                if cards[chosenIndex].content == cards[potentionalMatchIndex].content {
                    cards[chosenIndex].isMatched = true
                    cards[potentionalMatchIndex].isMatched = true
                }
                indexOfTheOneAndOnlyFaceupCard = nil
            } else {
                for index in cards.indices {
                    cards[index].isFaceup = false
                }
                indexOfTheOneAndOnlyFaceupCard = chosenIndex
            }
            cards[chosenIndex].isFaceup.toggle()
        }
        print("hellow")
    }
    
/*    func index(of card : Card) -> Int? {
        for index in 0..<cards.count{
            if cards[index].id == card.id{
                return index
            }
        }
        return nil
    }*/
    
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
