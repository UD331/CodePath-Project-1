import Foundation


// TODO: Pt 1 - Create a Track model struct


struct Track {

    let trackName: String // Movie Name

    let artistName: String // Description

    let artworkUrl100: URL // Picture


    // Detail properties

    let collectionName: String // #Votes

    let primaryGenreName: String // Popularity

    let releaseDate: String // Vote Avg

    let trackTimeMillis: String // delete later

}


// TODO: Pt 1 - Create an extension with a mock tracks static var


extension Track {


    /// An array of mock tracks

    static var mockTracks: [Track]  = [

        Track(trackName: "The Godfather",

              artistName: "The Godfather Don Vito Corleone is the head of the Corleone mafia family in New York. Michael seems to be uninterested in being a part of the family business. Vito is a powerful man, and is kind to all those who give him respect but is ruthless against those who do not. But when a powerful and treacherous rival wants to sell drugs and needs the Don's influence for the same, Vito refuses to do it. What follows is a clash between Vito's fading old values and the new ways which may cause Michael to do the thing he was most reluctant in doing and wage a mob war against all the other mafia families which could tear the Corleone family apart.",

              artworkUrl100: URL(string:"https://upload.wikimedia.org/wikipedia/en/a/af/The_Godfather%2C_The_Game.jpg")!,

             collectionName: "Votes",

             primaryGenreName: "50.0 Popularity",

              releaseDate: "10.0 Vote Average",

              trackTimeMillis: "200"),

        Track(trackName: "The Dark Knight",

              artistName: "Set within a year after the events of Batman Begins (2005), Batman, Lieutenant James Gordon, and new District Attorney Harvey Dent successfully begin to round up the criminals that plague Gotham City, until a mysterious and sadistic criminal mastermind known only as The Joker appears in Gotham, creating a new wave of chaos. Batman's struggle against The Joker becomes deeply personal, forcing him to confront everything he believes and improve his technology to stop him. A love triangle develops between Bruce Wayne, Dent, and Rachel Dawes.",

              artworkUrl100: URL(string: "https://cdn.prime1studio.com/media/catalog/product/cache/1/image/1400x1400/17f82f742ffe127f42dca9de82fb58b1/h/d/hdmmdc-02_a19.jpg")!,

              collectionName: "Votes",

              primaryGenreName: "45.0 Popularity",

               releaseDate: "9.5 Vote Average",

               trackTimeMillis: "195"),

        Track(trackName: "The Winter Soldier",

              artistName: "For Steve Rogers, awakening after decades of suspended animation means that this old school idealist must face a world of subtler threats and difficult moral complexities. That becomes clear when Director Nick Fury is killed by the mysterious assassin, the Winter Soldier, but not before warning Rogers that SHIELD has been subverted by its enemies. When Rogers acts on Fury's warning to trust no one there, he is branded as a traitor by the organization. Now a fugitive, Captain America must get to the bottom of this deadly mystery with the help of the Black Widow and his new friend, The Falcon.",

              artworkUrl100: URL(string: "https://m.media-amazon.com/images/M/MV5BMzA2NDkwODAwM15BMl5BanBnXkFtZTgwODk5MTgzMTE@._V1_.jpg")!,

              collectionName: "Votes",

              primaryGenreName: "40.0 Popularity",

               releaseDate: "9.0 Vote Average",

               trackTimeMillis: "190"),

        Track(trackName: "Knives Out",

              artistName: "Nothing could blemish the lavish birthday party at the palatial estate of acclaimed crime/mystery novelist Harlan Thrombey except for his strange and unaccountable death. But cryptic detective Benoit Blanc is not entirely sure. Because, as it turns out, there are more than a few members of the successful author's clingy family who have been economical with the truth so far. And as Blanc struggles to shed light on a tangled mess of half-baked leads and little white lies, all eyes are on the grand prize: Harlan's magnificent legacy. The question is, can Benoit find the answer to this perplexing case before someone else dies?",

              artworkUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BMGUwZjliMTAtNzAxZi00MWNiLWE2NzgtZGUxMGQxZjhhNDRiXkEyXkFqcGdeQXVyNjU1NzU3MzE@._V1_.jpg")!,

             collectionName: "Votes",

             primaryGenreName: "35.0 Popularity",

              releaseDate: "8.5 Vote Average",

              trackTimeMillis: "185"),

        Track(trackName: "First Blood",

              artistName: "John J. Rambo is a former United States Special Forces soldier who fought in Vietnam and won the Congressional Medal of Honor, but his time in Vietnam still haunts him. As he came to Hope, Washington to visit a friend, he was guided out of town by the Sheriff William Teasel who insults Rambo, but what Teasel does not know that his insult angered Rambo to the point where Rambo became violent and was arrested. As he was at the county jail being cleaned, he escapes and goes on a rampage through the forest to try to escape from the sheriffs who want to kill him.",

              artworkUrl100: URL(string:"https://upload.wikimedia.org/wikipedia/en/d/d6/First_blood_poster.jpg")!,

             collectionName: "Votes",

             primaryGenreName: "30.0 Popularity",

              releaseDate: "8.0 Vote Average",

              trackTimeMillis: "180"),

        Track(trackName: "The Godfather II",

              artistName: "The life of Vito Corleone is shown as he becomes from a boy born in Sicily to one of the most respected mafia dons of New York while Micheal attempts to expand his business empire into Las Vegas, Florida and pre-revolution Cuba while facing his own personal problems trying to keep his collapsing marriage and relationship with his brother intact.",

              artworkUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg")!,

             collectionName: "Votes",

             primaryGenreName: "25.0 Popularity",

              releaseDate: "7.5 Vote Average",

              trackTimeMillis: "175"),

        Track(trackName: "Goodfellas",

              artistName: "This film views the mob lives of three pivotal figures in the 1960's and 70's New York. Henry Hill is a local boy turned gangster in a neighborhood full of the roughest and toughest. Tommy DeVito is a purebred gangster, who turns out to be Henry's best friend. Jimmy Conway puts the two of them together, and runs some of the biggest hijacks and burglaries the town has ever seen. After an extended jail sentence, Henry must sneak around the back of the local mob boss, Paulie Cicero, to live the life of luxury he has always dreamed of.",

              artworkUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg")!,

             collectionName: "Votes",

             primaryGenreName: "20.0 Popularity",

              releaseDate: "7.0 Vote Average",

              trackTimeMillis: "170")

    ]


    // We can now access this array of mock tracks anywhere like this:

    // let tracks = Tracks.mockTracks

}


// MARK: Helper Methods

/// Converts milliseconds to mm:ss format

///  ex:  208643 -> "3:28"

///  ex:

func formattedTrackDuration(with milliseconds: Int) -> String {

    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)

    let truncatedSeconds = seconds / 1000

    if truncatedSeconds >= 10 {

        return "\(minutes):\(truncatedSeconds)"

    } else {

        return "\(minutes):0\(truncatedSeconds)"

    }

}
