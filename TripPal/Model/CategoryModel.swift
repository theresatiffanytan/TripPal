//
//  CategoryModel.swift
//  TripPal
//
//  Created by Deka Primatio on 24/03/23.
//

import SwiftUI

struct categoryModel: Identifiable {
    let id = UUID()
    let title: String
    let category: String
    var image: UIImage
}

class ViewModelDetail: ObservableObject {
    @Published var data: [categoryModel] = [
    categoryModel(title: "Katsukita", category: "Restaurant & Cafe", image: UIImage(imageLiteralResourceName: "slideshow-1")),
    categoryModel(title: "Katsukita", category: "Restaurant & Cafe", image: UIImage(imageLiteralResourceName: "slideshow-2")),
    categoryModel(title: "Katsukita", category: "Restaurant & Cafe", image: UIImage(imageLiteralResourceName: "slideshow-2"))
    ]
}

