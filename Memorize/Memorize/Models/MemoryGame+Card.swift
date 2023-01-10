//
//  MemoryGame+Card.swift
//  Memorize
//
//  Created by Alexey Chuvagin on 10.01.2023.
//

import Foundation

extension MemoryGame {
    struct Card : Identifiable {
        let id = UUID()
        var content: CardContent
        var isFaceUp: Bool = false
        var isMatched: Bool = false
    }
}
