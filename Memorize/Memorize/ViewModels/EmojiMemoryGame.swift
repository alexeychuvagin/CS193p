//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Alexey Chuvagin on 10.01.2023.
//

import SwiftUI

class EmojiMemoryGame : ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = [ "đ", "đ", "đ", "đ", "đ", "đī¸", "đ", "đ", "đ", "đ", "đģ", "đ", "đ", "đ", "đ˛", "đ´", "đĩ", "đī¸", "đē", "đ", "đ", "âī¸", "đŠī¸", "đ", "đ¸", "đ", "đļ", "âĩī¸", "đ¤", "đĨī¸", "đĸ" ].shuffled()
    
    @Published private var model = MemoryGame<String>(numberOfPairsOfCards: 4) { emojis[$0] }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    func choose(_ card: Card) {
        model.choose(card)
    }
}
