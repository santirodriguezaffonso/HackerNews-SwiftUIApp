//
//  ContentView.swift
//  HackerNews-SwiftUIApp
//
//  Created by Santiago Rodriguez Affonso on 21/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    let posts: [Post] = [
        Post(id: "1", title: "Bla, Bla, Bla"),
        Post(id: "4", title: "New York City"),
        Post(id: "4", title: "Minnesota")
    ]
    var body: some View {
        NavigationView {
            List(posts, rowContent: { post in
                Text(post.title)
            })
            .navigationTitle("Hacker News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Post: Identifiable {
    let id: String
    let title: String
}
