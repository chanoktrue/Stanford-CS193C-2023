//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Thongchai Subsaidee on 9/5/24.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
