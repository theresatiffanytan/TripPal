//
//  MainCard.swift
//  TripPal
//
//  Created by Theresa Tiffany on 24/03/23.
//

import SwiftUI
//import Combine

//DATA TYPE DECLARATION FOR MAIN CARD (ContentView)
struct cardModel: Identifiable {
    let id = UUID()
    let title: String
    var image: UIImage
    let address: String
    let distance: String
    let category: String
}

//LIST OF DATA FOR EACH MAIN CARD
class ViewModelHome: ObservableObject {
    let data: [cardModel] = [
        cardModel(title: "The Breeze", image: UIImage(imageLiteralResourceName: "thebreeze"), address: "Jl. BSD Green Office Park, Kabupaten Tangerang", distance: "650 M", category: "Restaurant & Cafe"),
        cardModel(title: "AEON Mall", image: UIImage(imageLiteralResourceName: "aeon"), address: "Jl. BSD Raya Utama, Kabupaten Tangerang", distance: "1.2 Km", category: "Shopping Center"),
        cardModel(title: "Taman Kota", image: UIImage(imageLiteralResourceName: "tamankota"), address:  "Jl. Letnan Sutopo, Kota Tangerang Selatan", distance: "5.1 Km", category: "Garden & Park"),
        cardModel(title: "Dewantara Sport Center", image: UIImage(imageLiteralResourceName: "sport"), address: "Jl. Buaran Raya No.62, Kota Tangerang Selatan", distance: "8.2 Km", category: "Playground & Sports")
    ]
    
    @Published var filteredData: [cardModel] =  [
        cardModel(title: "The Breeze", image: UIImage(imageLiteralResourceName: "thebreeze"), address: "Jl. BSD Green Office Park, Kabupaten Tangerang", distance: "650 M", category: "Restaurant & Cafe"),
        cardModel(title: "AEON Mall", image: UIImage(imageLiteralResourceName: "aeon"), address: "Jl. BSD Raya Utama, Kabupaten Tangerang", distance: "1.2 Km", category: "Shopping Center"),
        cardModel(title: "Taman Kota", image: UIImage(imageLiteralResourceName: "tamankota"), address:  "Jl. Letnan Sutopo, Kota Tangerang Selatan", distance: "5.1 Km", category: "Garden & Park"),
        cardModel(title: "Dewantara Sport Center", image: UIImage(imageLiteralResourceName: "sport"), address: "Jl. Buaran Raya No.62, Kota Tangerang Selatan", distance: "8.2 Km", category: "Playground & Sports")
    ]
    
    func filterData(keyword: String){
        //TODO: - Make the filter logic
        
    }
}
