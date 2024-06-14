//
//  ContentView.swift
//  Memorize
//
//  Created by Thongchai Subsaidee on 9/5/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻", "🎃", "🕷️", "😈"]
    var body: some View {
        HStack{
            CardView(content: emojis[0], isFaceUp: true)
            CardView(content: emojis[1], isFaceUp: false)
            CardView(content: emojis[2], isFaceUp: false)
            CardView(content: emojis[3], isFaceUp: false)
        }
        .foregroundColor(.orange)
        .imageScale(.small)
        .padding()
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp = false
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }else{
                RoundedRectangle(cornerRadius: 12)
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
