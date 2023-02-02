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


        Nuke.loadImage(with: track.artworkUrl100, into: trackImageView)

        trackNameLabel.text = track.trackName//Movie Name
        artistLabel.text = track.artistName
        albumLabel.text = track.collectionName // #Votes

        genreLabel.text = track.primaryGenreName // Popularity


        // Create a date formatter to style our date and convert it to a string

//        let dateFormatter = DateFormatter()

//        dateFormatter.dateStyle = .medium

        releaseDateLabel.text = track.releaseDate // Vote Avg


        // Use helper method to convert milliseconds into `mm:ss` string format

       


    }



}
