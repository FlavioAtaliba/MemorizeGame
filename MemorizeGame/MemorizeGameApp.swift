//
//  MemorizeGameApp.swift
//  MemorizeGame
//
//  Created by user249445 on 4/3/24.
//

import SwiftUI

@main
struct MemorizeGameApp: App {
    
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
