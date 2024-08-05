//
//  PaletteManager.swift
//  EmojiArt
//
//  Created by Даниил Чугуевский on 23.07.2024.
//

import SwiftUI

struct PaletteManager: View {
  let stores: [PaletteStore]
  
  @State var selectedStore: PaletteStore?
  
  var body: some View {
    NavigationSplitView {
      List(stores, selection: $selectedStore) { store in        
        PaletteStoreView(store: store)
          .tag(store)
      }
    } content: {
      if let selectedStore {
        EditablePaletteList(store: selectedStore)
      }
      Text("Choose a store")
    } detail: {
      Text("Choose a palette")
    }
  }
}

struct PaletteStoreView: View {
  @ObservedObject var store: PaletteStore
  
  var body: some View {
    Text(store.name)
  }
}

#Preview {
  PaletteManager(stores: [PaletteStore(named: "Preview1"),PaletteStore(named: "Preview2")])
}
