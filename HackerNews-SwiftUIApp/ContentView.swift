//
//  ContentView.swift
//  HackerNews-SwiftUIApp
//
//  Created by Santiago Rodriguez Affonso on 21/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Hello!")
            }
            .navigationTitle("Hacker News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
