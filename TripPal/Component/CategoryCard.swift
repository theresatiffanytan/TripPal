//
//  CategoryCard.swift
//  TripPal
//
//  Created by Deka Primatio on 22/03/23.
//

import SwiftUI

struct CategoryCard: View {
    var body: some View {
        HStack(spacing: 16) {
            HStack {
                
                Image("thebreeze")
                    .resizable()
                    .frame(width:50, height:50)
                    .cornerRadius(10)
                    .shadow(radius: 3)
                
                VStack (spacing: 5) {
                    Text("Katsukita")
                        .font(.system(size: 14, weight: .bold))
                    
                    Text("Restaurant & Cafe")
                        .font(.system(size: 10, weight: .semibold))
                        .foregroundColor(Color.white)
                        .padding(2)
                        .frame(width:110)
                        .background(.blue)
                        .cornerRadius(8)
                }
            }// - HSTACK CARD 1
            .padding(8)
            .background(.red)
            .cornerRadius(10)
            .shadow(radius: 5)
        }
    }
}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCard()
            .previewLayout(.sizeThatFits)
    }
}
