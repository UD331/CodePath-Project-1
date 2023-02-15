//
//  Posters.swift
//  Flixster
//
//  Created by Udayan Pandey on 2/4/23.
//

import Foundation


struct AlbumSearchResponse: Decodable {
    let results: [Album]
    

}

struct Album: Decodable {
    static var artworkUrl100: String = "https://image.tmdb.org/t/p/w185"
}

