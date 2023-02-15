import UIKit

import Nuke


class TrackCell: UITableViewCell {


    @IBOutlet weak var trackImageView: UIImageView!

    @IBOutlet weak var trackNameLabel: UILabel!

    @IBOutlet weak var artistNameLabel: UILabel!


    override func awakeFromNib() {

        super.awakeFromNib()

        // Initialization code

    }


    override func setSelected(_ selected: Bool, animated: Bool) {

        super.setSelected(selected, animated: animated)


        // Configure the view for the selected state

    }


    /// Configures the cell's UI for the given track.

    func configure(with track: Track) {

        trackNameLabel.text = track.original_title

        artistNameLabel.text = track.overview


        // Load image async via Nuke library image loading helper method


        // Set the image on the image view of the cell
        Nuke.loadImage(with: URL(string: Track.posterBaseURLString+track.poster_path)!, into: trackImageView)
    }


}
