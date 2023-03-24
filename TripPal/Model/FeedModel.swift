//
//  FeedModel.swift
//  TripPal
//
//  Created by Deka Primatio on 24/03/23.
//

import SwiftUI

struct FeedModel: Identifiable {
    let id = UUID()
    let imageTitle: String
    let imageName: String
}

let feedData = [
    
    FeedModel(imageTitle: "1", imageName: "slideshow-1"),
    FeedModel(imageTitle: "2", imageName: "slideshow-2"),
    FeedModel(imageTitle: "3", imageName: "slideshow-3"),
    FeedModel(imageTitle: "4", imageName: "slideshow-4"),
    FeedModel(imageTitle: "5", imageName: "slideshow-1"),
    FeedModel(imageTitle: "6", imageName: "slideshow-2")
]

