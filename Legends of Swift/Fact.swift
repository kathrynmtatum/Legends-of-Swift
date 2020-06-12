//
//  Fact.swift
//  Legends of Swift
//
//  Created by Kathryn Tatum on 5/2/20.
//  Copyright © 2020 Kathryn Tatum. All rights reserved.
//

import Foundation

class Fact {
    
    struct Result: Codable {
        var value: String
    }
    
    var quote: String = ""
    var url: String = "https://api.chucknorris.io/jokes/random?category=dev"

    func getQuote(completed: @escaping ()->()) {
        let urlString = url
        print("😼 We are accessing the url \(urlString)")

        // Create a URL
        guard let url = URL(string: urlString) else {
            print("😡 ERROR: Could not create a URL from \(urlString)")
            completed()
            return
        }

        // Create Session
        let session = URLSession.shared

        // Get data with .dataTask method
        let task = session.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("😡 ERROR: \(error.localizedDescription)")
            }

            // note: there are some additional things that could go wrong when using URL session, but we shouldn't experience them, so we'll ignore testing for these for now...

            // deal with the data
            do {
                let result = try JSONDecoder().decode(Result.self, from: data!)
                print("*** QUOTE: \(result.value)")
                self.quote = result.value
            } catch {
                print("😡 JSON ERROR: \(error.localizedDescription)")
            }
            completed()
        }

        task.resume()
    }
}
