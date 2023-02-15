import Foundation


// TODO: Pt 1 - Create a Track model struct


struct Track : Decodable {

    /*var trackName: String // Movie Name

    var artistName: String // Description

    static var artworkUrl100: String = "https://image.tmdb.org/t/p/w185"
 // Picture


    // Detail properties
    var releaseDate: Double // Vote Avg

    var collectionName: Int // #Votes

    var primaryGenreName: String // Popularity*/
    
    var original_title: String
    var overview: String
    var popularity: Double
    
    var poster_path: String // when loading image with Nuke, make sure you convert to url by prepending base url
    static var posterBaseURLString: String = "https://image.tmdb.org/t/p/w185"
        
    var vote_average: Double
    var vote_count: Int


}


// TODO: Pt 1 - Create an extension with a mock tracks static var


struct TracksResponse: Decodable {
    var results : [Track]
    
    static func loadJson() -> [Track] {
            if let url = Bundle.main.url(forResource: "data", withExtension: "json") {
                do {
                    let data = try Data(contentsOf: url)
                    let decoder = JSONDecoder()
                    let jsonData = try decoder.decode(TracksResponse.self, from: data)
                    return jsonData.results
                } catch {
                    print("error:\(error)")
                }
            }
            return []
        }

}
