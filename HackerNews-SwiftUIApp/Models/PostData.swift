//
//  PostData.swift
//  HackerNews-SwiftUIApp
//
//  Created by Santiago Rodriguez Affonso on 21/04/2022.
//

import Foundation

struct Results: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let url: String
    let points: Int
    let objectID: String
}
