//
//  TripBuddy.swift
//  TripPal
//
//  Created by Deka Primatio on 26/03/23.
//

import SwiftUI

struct TripBuddy: View {
    //MARK: - PROPERTY
    @State private var friendName: String = ""
    @State private var dataArray: [String] = []
    
    //MARK: - BODY CONTENT
    var body: some View {
        //MARK: - VSTACK MAIN WRAPPER
        VStack {
            //MARK: - HSTACK YOUR TRIP BUDDY & PLUS ICON
            HStack {
                Text("Your Trip Buddy")
                    .font(.system(size: 20, weight: .semibold))
                Spacer()
                Image(systemName: "plus.circle.fill")
                    .font(.title)
                    .foregroundColor(.blue)
                    
                    .onTapGesture {
                        saveText()
                    }
            }
            .padding()
            
            //MARK: - VSTACK FOR TEXTFIELD
            VStack {
                TextField("Trip Buddy...", text: $friendName)
                    .overlay(
                        Image(systemName: "xmark.circle.fill")
                            .padding()
                            .offset(x:10)
                            .foregroundColor(Color.accentColor)
                            .opacity(friendName.isEmpty ? 0.0 : 1.0)
                            .onTapGesture {
                                friendName = ""
                            }, alignment: .trailing
                    ) // END - Adding X Mark
                    .padding()
                    .background(Color.gray.opacity(0.2).cornerRadius(10))
                    .font(.headline)
            }//: - VSTACK FOR TEXTFIELD
            .padding([.bottom, .leading, .trailing])
            
            // MARK: - VSTACK FOREACH SHOW FRIENDS NAME
            VStack {
                ForEach(dataArray, id: \.self) { friendName in
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.gray.opacity(0.3))
                            .padding(.horizontal)
                            .frame(height: 40)
                        
                        Text(friendName)
                    } //: - ZStack with RoundedRectangle
                } //: - ForEach Statement
            } //: - VSTACK FOREACH SHOW FRIENDS NAME
            .background(Color("softGray").opacity(0.1))
            
        }//: - VSTACK MAIN WRAPPER
    }//: - BODY CONTENT
    
    //MARK: - FUNCTIONS
    func saveText() {
        //Saving Text and Append Input Text from Bottom
        dataArray.append(friendName)
    }//: - FUCNTIONS
}

struct TripBuddy_Previews: PreviewProvider {
    static var previews: some View {
        TripBuddy()
            .previewLayout(.sizeThatFits)
    }
}
