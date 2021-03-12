//
//  Card.swift
//  PickFlicks
//
//  Created by Ryan Anderson on 3/12/21.
//

import Foundation
import UIKit
struct Card: Identifiable {
    let id = UUID()
    let title : String
    let vote_average: Double
    let imageName: String
//    let movieRating: Int
    // Card x Position
    var  x: CGFloat = 0.0
    // Card y Position
    var y: CGFloat = 0.0
    // Card Rotation Angle
    var degree: Double = 0.0
    
    
    static var data: [Card]{
        [
        Card(title: "Rosie", vote_average: 10, imageName: "p0"),
        Card(title: "Betty", vote_average: 9, imageName: "p1"),
        Card(title: "Abigail", vote_average: 8, imageName: "p2"),
        Card(title: "Tilly", vote_average: 7, imageName: "p3"),
        Card(title: "Penny", vote_average: 6, imageName: "p4")
        ]
    }
    
    
}
