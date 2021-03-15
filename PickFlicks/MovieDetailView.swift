//
//  MovieDetailView.swift
//  PickFlicks
//
//  Created by Paul Bunnell on 3/12/21.
//

import SwiftUI

struct MovieDetailView: View {
    
    let testMovie = Movie(title: "Jumanji", overview: "This is a test overview with random text. A movie blah blah blah. Directed by blah blah blah. Released in blah blah balh", vote_average: 9.7, poster_path: "A path", release_date: "2019")
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: .some(15)) {
            HStack {
                Text(testMovie.title)
                .font(.title)
                    .padding(.leading)
                Spacer()
            }
                
            HStack {
                Image(systemName: "star")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 200, alignment: .center)
                VStack(alignment: .leading) {
                    Text("Released: \(testMovie.release_date)")
                        .padding(.bottom)
                    Text("Rating: \(String(testMovie.vote_average))")
                        
                }
                .padding(.leading)
                Spacer()
                
            }
            .padding(.leading)
            VStack (alignment: .leading){
                Text("Overview: ")
                    .padding(.leading)
                    .padding(.bottom)
                Text(testMovie.overview)
                    .padding(.leading)
            }
            
            Spacer()
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView()
    }
}
