//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Даниил Чугуевский on 16.07.2024.
//

import SwiftUI

@main
struct Emoji_ArtApp: App {
  @StateObject var defaultDocument = EmojiArtDocument()
  @StateObject var paletteStore = PaletteStore(named: "Main")
  @StateObject var store2 = PaletteStore(named: "Alternate")
  
  var body: some Scene {
    WindowGroup {
      EmojiArtDocumentView(document: defaultDocument)
        .environmentObject(paletteStore)
    }
  }
}
