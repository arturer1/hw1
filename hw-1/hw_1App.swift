//
//  hw_1App.swift
//  hw-1
//
//  Created by Tang, David on 9/9/24.
//

import SwiftUI

@main
struct MovieApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class Movie: ObservableObject {
    private var index: Int
    private var movies: [String: String]

    init() {
        self.index = 7
        self.movies = [
            "Iron Man" : "Robert Downey Jr.",
            "Doctor Strange": "Benedict Cumberbatch",
            "Spider Man: Homecoming": "Tom Holland",
            "The Dark Knight": "Christian Bale",
            "Deadpool": "Ryan Reynolds",
            "Deadpool 2": "Ryan Reynolds",
            "Green Lantern": "Ryan Reynolds",
            "Free Guy": "Ryan Reynolds"
        ]
    }

    func nextMovie() -> String {
        let keys = Array(movies.keys)
        
        self.index = (index + 1) % keys.count
        
        return keys[index]
    }
}
