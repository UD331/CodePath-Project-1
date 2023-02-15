//
//  PostersViewController.swift
//  Flixster
//
//  Created by Udayan Pandey on 2/4/23.
//
import Nuke
import UIKit

class PostersViewController: UIViewController, UICollectionViewDataSource {
    //@IBOutlet weak var posterimage: UIImageView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        tracks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Poster", for: indexPath) as! Poster
        
        // Use the indexPath.item to index into the albums array to get the corresponding album
        let pos = tracks[indexPath.item]

        // Get the artwork image url
        // Set the image on the image view of the cell
        let imgURl = URL(string: Track.posterBaseURLString + pos.poster_path);
        Nuke.loadImage(with: imgURl!, into:cell.posterImageView)
        return cell
    }
    var tracks: [Track] = []

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=bb09a518bc92e6f8717a912f3335f779")!
        let request = URLRequest(url: url)

        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }

            let decoder = JSONDecoder()
            do {
                // Try to parse the response into our custom model
                let response = try decoder.decode(TracksResponse.self, from: data)
                let tracks = response.results
                DispatchQueue.main.async { [self] in
                    self?.tracks = tracks
                    self?.collectionView.reloadData()
                }
            } catch {
                print(error)
            }
        }

        // Initiate the network request
        task.resume()
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout

        // The minimum spacing between adjacent cells (left / right, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumInteritemSpacing = 4

        // The minimum spacing between adjacent cells (top / bottom, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumLineSpacing = 4

        // Set this to however many columns you want to show in the collection.
        let numberOfColumns: CGFloat = 3

        // Calculate the width each cell need to be to fit the number of columns, taking into account the spacing between cells.
        let width = (collectionView.bounds.width - layout.minimumInteritemSpacing * (numberOfColumns - 1)) / numberOfColumns

        // Set the size that each tem/cell should display at
        layout.itemSize = CGSize(width: width, height: width)
        // Initiate the network request
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let cell = sender as? UICollectionViewCell,
           // Get the index path of the cell from the table view
           let indexPath = collectionView.indexPath(for: cell),
           // Get the detail view controller
           let detailViewController = segue.destination as? DetailViewController {

            // Use the index path to get the associated track
            let track = tracks[indexPath.row]
            
            // Set the track on the detail view controller
            detailViewController.track = track
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
