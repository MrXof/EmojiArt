//
//  Palette.swift
//  EmojiArt
//
//  Created by Даниил Чугуевский on 16.07.2024.
//

import Foundation

struct Palette: Identifiable, Codable, Hashable {
  var name: String
  var emojis: String
  var id = UUID()
  
  static var builtins: [Palette] { [
    Palette(name: "Cars", emojis: "🚙🚗🚘🚕🚖")
  ] }
}
