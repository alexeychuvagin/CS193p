//
//  CardView.swift
//  Memorize
//
//  Created by Alexey Chuvagin on 09.01.2023.
//

import SwiftUI

struct CardView: View {
    let content: String
    @State private var isFaceUp: Bool = false
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                let shape = RoundedRectangle(cornerRadius: 20)
                
                if isFaceUp {
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: 3)
                    
                    Text(content)
                        .font(.largeTitle)
                        .frame(height: geo.size.height)
                }
                else {
                    shape.fill()
                }
            }
            .onTapGesture {
                isFaceUp.toggle()
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(content: "🚗")
    }
}
