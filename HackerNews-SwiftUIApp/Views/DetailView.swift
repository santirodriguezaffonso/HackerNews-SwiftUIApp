//
//  DetailView.swift
//  HackerNews-SwiftUIApp
//
//  Created by Santiago Rodriguez Affonso on 22/04/2022.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https//:www.google.com")
    }
}

