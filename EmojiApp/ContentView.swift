//
//  ContentView.swift
//  EmojiApp
//
//  Created by Ayben Gülnar  on 11.12.2023.
//

import SwiftUI
enum Emoji: String , CaseIterable {
    case 🐸,🦊,🍯🐝,🐨,🐢
    
}

struct ContentView: View {
    @State var selection: Emoji = .🐸

    var body: some View {
        NavigationView{VStack {
            Text(selection.rawValue)
                .font(.system(size: 200))
            
            Picker("Select Emoji", selection: $selection) {
                ForEach(Emoji.allCases, id: \.self) { Emoji in
                    Text(Emoji.rawValue)
                }
            }
            .pickerStyle(.segmented)
        }
        .navigationTitle("Animals!")
        }.padding()
    }
}

struct ContentView_previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
