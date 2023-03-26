//
//  scoringCard.swift
//  TripPal
//
//  Created by Theresa Tiffany on 22/03/23.
//

import SwiftUI

struct scoringCard: View {
    //MARK: - PROPERTY
    @Binding var counter: Int
    @Binding var target: Int
    
    //MARK: - BODY CONTENT
    var body: some View {
        //MARK: - ZSTACK SCORING CARD (GLASSMORPHISM) WRAPPER
        ZStack {
            Color.white.opacity(0.85)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 4, x:0, y:4)
                .blur(radius: 1)
                .frame(width:365, height:170)
            
            //MARK: - HSTACK SCORING CARD CONTENT
            HStack(spacing:5) {
                // TripPal Logo
                Image("iconHome")
                    .resizable()
                    .frame(width:130, height:130)
                    .cornerRadius(10)
                    .shadow(radius: 3)
                    .offset(x:5)
                
                Spacer()
                
                //MARK: - VSTACK COPY WRITING
                VStack(alignment: .leading, spacing: 10) {
                    Text("Your Milestone")
                        .font(.system(size: 18, weight: .bold))
                    
                    Text("Newcomer")
                        .font(.system(size: 14, weight: .bold))
                        .frame(width:120, height: 20)
                        .background(.brown)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                    
                    // HSTACK ICON & PLACES CHECKED IN
                    HStack {
                        Image(systemName: "location.north.circle")
                        
                        Text("\(counter) places checked in")
                            .font(.system(size:16, weight: .bold))
                            .frame(height:20)
                    }//: - HSTACK ICON & PLACES CHECKED IN
                    .foregroundColor(Color.black.opacity(0.8))
                    
                    Divider()
                    
                    // HSTACK FOR TARGET GOALS FOR NEXT LEVEL
                    HStack {
                        Text("\(target) more places to go until you reach the next milestone !")
                            .font(.system(size:14))
                            .bold()
                    }//: - HSTACK FOR TARGET GOALS FOR NEXT LEVEL
                    .foregroundColor(Color.black.opacity(0.8))
                }//: - VSTACK COPY WRITING
            }//: - HSTACK SCORING CARD CONTENT
            .padding(8)
        } //: - ZSTACK SCORING CARD (GLASSMORPHISM) WRAPPER
        .offset(y:-35)
    }//: - BODY CONTENT
}

struct scoringCard_Previews: PreviewProvider {
    static var previews: some View {
        //DEFAULT VALUES FOR SCORING CARD
        scoringCard(counter: .constant(0), target: .constant(5))
    }
}
