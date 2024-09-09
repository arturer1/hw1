
//
//  ContentView.swift
//  hw-1
//
//  Created by Tang, David on 9/9/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var movie = Movie()
    
    @State private var currMovieTitle: String = ""

    var body: some View {
        VStack {
            Text("Movies")
                .font(.largeTitle)
                .foregroundColor(.red)
                .padding(.top, 50)

            Text(currMovieTitle)
                .font(.title)
                .padding()

            // Step 5: Next button
            Button(action: {
                // When button is pressed, get the next movie title
                currMovieTitle = movie.nextMovie()
            }) {
                Text("Next")
                    .font(.title2)
                    .foregroundColor(.blue)
            }
            .padding(.top, 20)

            Spacer()
        }
        .onAppear {
            // Step 6: Display the first movie title when the app launches
            currMovieTitle = movie.nextMovie()
        }
    }
}


