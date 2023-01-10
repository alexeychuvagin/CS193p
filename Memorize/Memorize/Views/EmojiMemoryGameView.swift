//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Alexey Chuvagin on 09.01.2023.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    let game: EmojiMemoryGame = EmojiMemoryGame()
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                    ForEach(game.cards) { card in
                        CardView(card)
                            .aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                game.choose(card)
                            }
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
