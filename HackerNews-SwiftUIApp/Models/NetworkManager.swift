//
//  NetworkManager.swift
//  HackerNews-SwiftUIApp
//
//  Created by Santiago Rodriguez Affonso on 21/04/2022.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page")
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url!) { data, response, error in
            if error != nil {
                print(String(describing: error))
            }
            if let safeData = data {
                do {
                    let decoder = JSONDecoder()
                    let results = try decoder.decode(Results.self, from: safeData)
                    DispatchQueue.main.async {
                        self.posts = results.hits
                    }
                }
                catch {
                    print(String(describing: error))
                }
            }
        }
        task.resume()
    }
}
