//
//  scoringCard.swift
//  TripPal
//
//  Created by Theresa Tiffany on 22/03/23.
//

import SwiftUI

struct scoringCard: View {
    @Binding var counter: Int
    @Binding var target: Int

    var body: some View {
        
        // START - ZSTack Scoring Card (Glassmorph)
        ZStack {
            Color.white.opacity(0.85)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 4, x:0, y:4)
                .blur(radius: 1)
                .frame(width:365, height:170)
            
            // START - HStack Scoring Card Component
            HStack (spacing:5){
                
                // Logo TripPal
                Image("iconHome")
                    .resizable()
                    .frame(width:130, height:130)
                    .cornerRadius(10)
                    .shadow(radius: 3)
                    .offset(x:5)
                
                Spacer()
                
                // START - VStack Scoring Title and Details
                VStack (alignment: .leading, spacing: 10) {
                    
                    Text("Your Milestone")
                        .font(.system(size: 18, weight: .bold))
                    Text("Newcomer")
                        .font(.system(size: 14, weight: .bold))
                        .frame(width:120, height: 20)
                        .background(.brown)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                    
                    // START - HStack Emo and Text Scoring Line1
                    HStack {
                        Image(systemName: "location.north.circle")
                        
                        Text("\(counter) places checked in")
                            .font(.system(size:16, weight: .bold))
                            .frame(height:20)
                    } // END - HStack Emo and Text Scoring
                    .foregroundColor(Color.black.opacity(0.8))
                    
                    Divider()
                    
                    // START - HStack Emo and Text Scoring Line2
                    HStack {
                        Text("\(target) more places to go until you reach the next milestone !")
                            .font(.system(size:14))
                            .bold()
                    } // END - HStack Emo and Text Scoring
                    .foregroundColor(Color.black.opacity(0.8))
                } // END - VStack scoring Title and Details
            } // END - HStack Scoring Card Component
            .padding(8)
        } // END - ZSTack Scoring Card (Glassmorph)
        .offset(y:-35)
    }
}

struct scoringCard_Previews: PreviewProvider {
    static var previews: some View {
        scoringCard(counter: .constant(0), target: .constant(5))
    }
}
