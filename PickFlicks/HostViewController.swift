//
//  HostViewController.swift
//  PickFlicks
//
//  Created by Paul Bunnell on 3/12/21.
//

import UIKit

class HostViewController: UIViewController {
    
    @IBOutlet var dismissButton: UIButton!
    @IBOutlet var joinedUsersLabel: UILabel!
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var pinLabel: UILabel!
    @IBOutlet var timeLimitPicker: UIPickerView!
    @IBOutlet var shareButton: UIButton!
    @IBOutlet var startSessionButton: UIButton!

    let testUser: User = User(firstName: "Paul", lastName: "Bunnell", email: "test@hotmail.com", favMovies: nil)
    
    let testMovie: Movie = Movie(title: "Test", overview: "This is a Test", vote_average: 9.9, poster_path: "Test Path", release_date: "1998")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        collectionView.delegate = self
//        collectionView.dataSource = self
        
    }
    
// Function for creating share sheet
    func presentShareSheet() {
        //For Testing
        let testInt: Int = 619042
        
        let testString = "Join \(testUser.firstName) on PickFlicks using code: \(testInt)"
        
        let shareSheet = UIActivityViewController(activityItems: [testString], applicationActivities: nil)
        
        present(shareSheet, animated: true, completion: nil)
    }
    
    @IBAction func dismissButtonTapped() {
        
        // Dismiss host view controller
        
    }
    
    @IBAction func pickerViewChanged() {
        
        // set time limit to picker time
        
    }
    
    @IBAction func shareButtonTapped() {
        
        presentShareSheet()
        
    }
    
    @IBAction func startSessionButtonTapped() {
        
        // perform segue to tinder session view
        
    }

}

//extension HostViewController: UICollectionViewDataSource{
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//        // Sets collection view count to number of active group members
//
//        let group = Group(sessionID: 686868, groupName: "Test Group", activeGroupMembers: [testUser], topPicks: [testMovie])
//
//        return group.activeGroupMembers.count
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//        /*
//        let cell = "Test Cell"
//
//        // Sets image to user.profilePicture
//        // cell.cellImage.image = user.profilePicture
//
//        return cell
//        */
//
//    }
//
//
//}

extension HostViewController: UICollectionViewDelegate {
    
}
