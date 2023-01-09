//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Alexey Chuvagin on 09.01.2023.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    private let emojiCount = 12
    private let emojis = [ "🚗", "🚕", "🚙", "🚌", "🚎", "🏎️", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🚲", "🛴", "🛵", "🏍️", "🛺", "🚃", "🚋", "✈️", "🛩️", "🚀", "🛸", "🚁", "🛶", "⛵️", "🚤", "🛥️", "🚢" ].shuffled()
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView()
    }
}
