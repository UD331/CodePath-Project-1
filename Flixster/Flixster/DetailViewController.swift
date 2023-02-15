import UIKit
import Nuke


class DetailViewController: UIViewController {


    @IBOutlet weak var trackImageView: UIImageView!

    @IBOutlet weak var trackNameLabel: UILabel! //movieName


    @IBOutlet weak var artistLabel: UILabel! //Description

    @IBOutlet weak var albumLabel: UILabel! //votes

    @IBOutlet weak var genreLabel: UILabel! // popularity

    @IBOutlet weak var releaseDateLabel: UILabel! // Vote avg

    @IBOutlet weak var durationLabel: UILabel!


    var track: Track!

    


    override func viewDidLoad() {

        super.viewDidLoad()
        Nuke.loadImage(with: URL(string: Track.posterBaseURLString+track.poster_path)!, into: trackImageView)


        trackNameLabel.text = track.original_title//Movie Name
        artistLabel.text = track.overview
        var s = String(track.vote_count)
        albumLabel.text = s // #Votes
        s = String(track.popularity)
        genreLabel.text = s// Popularity
        releaseDateLabel.text = String(track.vote_average)


        // Create a date formatter to style our date and convert it to a string

//        let dateFormatter = DateFormatter()

//        dateFormatter.dateStyle = .medium


        // Use helper method to convert milliseconds into `mm:ss` string format

       


    }



}
