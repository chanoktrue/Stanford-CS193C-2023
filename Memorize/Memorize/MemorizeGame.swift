//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Thongchai Subsaidee on 18/6/24.
//

import Foundation

struct MemorizeGame<CardContent> {
    
    var cards: Array<Card>
    
    func choose(card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
    
}

