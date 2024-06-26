//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Thongchai Subsaidee on 18/6/24.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable{
    
    private(set) var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        self.cards = []
        // add numberOfPairsOfCards x 2 cards
        for pairIndex in 0..<max(2,numberOfPairsOfCards) {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: "\(pairIndex+1)a"))
            cards.append(Card(content: content, id: "\(pairIndex+1)b"))
        }
        
    }
    
    mutating func choose(_ card: Card) {
        let shosenIndex = index(of: card)
        cards[shosenIndex].isFaceUp.toggle()
    }
    
    func index(of card: Card) -> Int {
        for index in cards.indices {
            if cards[index].id == card.id {
                return index
            }
        }
        return 0 // FIXME: bogus
    }
    
    mutating func shuffle() {
        cards.shuffle()
        print(cards)
    }
    
    struct Card: Equatable, Identifiable, CustomDebugStringConvertible {
                
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
                    
        var id: String
        var debugDescription: String {
            return "\(id): \(content) \(isFaceUp ? "Up": "Down")\(isMatched ? "Matched" : "")"
        }
    }
    
}

