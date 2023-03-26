//
//  CategoryModel.swift
//  TripPal
//
//  Created by Deka Primatio on 24/03/23.
//

import SwiftUI

//DATA TYPE DECLARATION FOR CARD CATEGORY (DetailPageView)
struct categoryModel: Identifiable {
    let id = UUID()
    let title: String
    let category: String
    var image: UIImage
}

//LIST OF DATA FOR EACH CARD
class ViewModelDetail: ObservableObject {
    @Published var data: [categoryModel] = [
        categoryModel(title: "Katsukita", category: "Restaurant & Cafe", image: UIImage(imageLiteralResourceName: "category-1")),
        categoryModel(title: "Hachi Grill", category: "Restaurant & Cafe", image: UIImage(imageLiteralResourceName: "category-2")),
        categoryModel(title: "Subway", category: "Restaurant & Cafe", image: UIImage(imageLiteralResourceName: "category-3"))
    ]
}

