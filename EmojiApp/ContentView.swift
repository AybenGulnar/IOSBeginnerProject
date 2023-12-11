//
//  ContentView.swift
//  EmojiApp
//
//  Created by Ayben Gülnar  on 11.12.2023.
//

import SwiftUI

enum Emoji: String {
    case 🦊,🐸,🐝,🦁,🐼
}

struct ContentView: View {
    var selection: Emoji = .🐸
    
    var body: some View {
        Text(selection.rawValue).font(.system(size: 150))
    }
}

#Preview {
    ContentView()
}
 
