//
//  CategoryCard.swift
//  TripPal
//
//  Created by Deka Primatio on 22/03/23.
//

import SwiftUI

struct CategoryCard: View {
    //MARK: - PROPERTY
    //Getting Data Type from categoryModel
    var model: categoryModel
    
    //MARK: - BODY CONTENT
    var body: some View {
        //MARK: - HSTACK MAIN WRAPPER
        HStack(spacing: 16) {
            //MARK: - HSTACK LAYOUT For IMAGE, TITLE, & CATEGORY
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
            }//: - HSTACK LAYOUT For IMAGE, TITLE, & CATEGORY
            .padding(8)
            .background(.white)
            .cornerRadius(10)
            .shadow(radius: 5)
        }//: - HSTACK MAIN WRAPPER
    }//: - BODY CONTENT
}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        //DEFAULT VALUE FOR CATEGORY CARD
        CategoryCard(model: categoryModel(title: "Katsukita", category: "Restaurant & Cafe", image: UIImage(imageLiteralResourceName: "category-1")))
            .previewLayout(.sizeThatFits)
    }
}
