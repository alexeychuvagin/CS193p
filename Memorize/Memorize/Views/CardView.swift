//
//  CardView.swift
//  Memorize
//
//  Created by Alexey Chuvagin on 09.01.2023.
//

import SwiftUI

struct CardView: View {
    private let card: EmojiMemoryGame.Card
    
    init(_ card: EmojiMemoryGame.Card) {
        self.card = card
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                let shape = RoundedRectangle(cornerRadius: 20)
                
                if card.isFaceUp {
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: 3)
                    
                    Text(card.content)
                        .font(.largeTitle)
                        .frame(width: geo.size.width, height: geo.size.height)
                }
                else {
                    shape.fill()
                }
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let card = EmojiMemoryGame.Card(content: "✈️")
        CardView(card)
    }
}
