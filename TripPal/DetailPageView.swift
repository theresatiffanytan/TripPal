//
//  DetailPageView.swift
//  TripPal
//
//  Created by Deka Primatio on 19/03/23.
//

import SwiftUI

struct DetailPageView: View {
    //MARK: - PROPERTY
    @State var friendName: String = ""
    
    //MARK: - BODY
    var body: some View {
        
        //MARK: - DETAIL PAGE SCROLLVIEW (VERTICAL)
        ScrollView(.vertical, showsIndicators: false) {

            VStack {
                Slideshow()
            }

            //MARK: - PLACES CATEGORY SCROLLVIEW (HORIZONTAL)
            ScrollView(.horizontal, showsIndicators: false) {

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

                    HStack (spacing:10) {

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
                    } // - HSTACK CARD 2
                    .padding(8)
                    .background(.green)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                }// - HSTACK WRAPPER CARD
                .padding()
            }//: - PLACES CATEGORY SCROLLVIEW (HORIZONTAL)
            
            //MARK: - GRID PHOTOS FOR MEMORIES
            HStack {
                Text("Memories")
                    .font(.system(size: 20, weight: .semibold))
                Spacer()
                Image(systemName: "plus.circle.fill")
                    .imageScale(.large)
            }
            .padding()
            
            HStack {
                Text("Your Trip Buddy")
                    .font(.system(size: 20, weight: .semibold))
                Spacer()
            }
            .padding()
            
            VStack {
                TextField(friendName, text: $friendName)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .font(.headline)
            }
            .padding(.horizontal)
            
            HStack {
                Text("How Do You Feel ?")
                    .font(.system(size: 20, weight: .semibold))
                Spacer()
                Image(systemName: "plus.circle.fill")
                    .imageScale(.large)
            }
            .padding()

            //MARK: - BUTTON SAVE
            Button { // Action Button
                
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .padding(.horizontal)
                        .frame(height: 40)
                        
                    Text("Save")
                        .foregroundColor(.white)
                } //: - ZStack with RoundedRectangle
            }
        }
    }
    
    //MARK: - FUNCTIONS
    func saveText() {
        
    }
}

//MARK: - PREVIEW
struct DetailPageView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPageView()
    }
}
