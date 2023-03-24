//
//  CategoryCard.swift
//  TripPal
//
//  Created by Deka Primatio on 22/03/23.
//

import SwiftUI

struct CategoryCard: View {
    var model: categoryModel
    
    var body: some View {
        HStack(spacing: 16) {
            HStack {
                
                Image(uiImage: model.image)
                    .resizable()
                    .frame(width:50, height:50)
                    .cornerRadius(10)
                    .shadow(radius: 3)
                
                VStack (spacing: 5) {
                    Text(model.title)
                        .font(.system(size: 14, weight: .bold))
                    
                    Text(model.category)
                        .font(.system(size: 10, weight: .semibold))
                        .foregroundColor(Color.white)
                        .padding(2)
                        .frame(width:110)
                        .background(.blue)
                        .cornerRadius(8)
                }
            }// - HSTACK CARD
            .padding(8)
            .background(.white)
            .cornerRadius(10)
            .shadow(radius: 5)
        }
    }
}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCard(model: categoryModel(title: "Katsukita", category: "Restaurant & Cafe", image: UIImage(imageLiteralResourceName: "slideshow-1")))
    }
}
