//
//  MainCard.swift
//  TripPal
//
//  Created by Theresa Tiffany on 24/03/23.
//

import SwiftUI

struct Card: View {
    @State private var action: Int? = 0
    @State private var animatingButton1: Bool = false
    @State var buttonIsPressed1: Bool = false
    @Binding var counter: Int
    @Binding var target: Int 
    
    var model1: cardModel
    
    var body: some View {
        // Navigation Link for each location
        NavigationLink(destination: DetailPageView(), tag: 1, selection: $action) {EmptyView()}
        
        //MARK: Card 1
        // START - ZStack Glassmorphism Card The Breeze
            ZStack {
                Color.white.opacity(0.85)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.2), radius: 4, x:0, y:4)
                    .blur(radius: 1)
                
                // START - HStack The Breeze Card's Detail
                HStack (spacing:5){
                    
                    // START - VStack The Breeze's Image and Category
                    VStack (spacing:10) {
                        Image(uiImage: model1.image)
                            .resizable()
                            .frame(width:110, height:110)
                            .cornerRadius(10)
                            .shadow(radius: 3)
                            .offset(x:5)
                        
                        Text(model1.category)
                            .font(.system(size: 10, weight: .regular))
                            .foregroundColor(Color.white)
                            .padding(1)
                            .frame(width:110)
                            .background(.blue)
                            .cornerRadius(8)
                            .offset(x:5)
                    }// END - VStack The Breeze's Image and Category
                    
                    Spacer()
                    
                    // START - VStack The Breeze's Detail
                    VStack (alignment: .leading, spacing: 10) {
                        Text(model1.title)
                            .font(.system(size: 20, weight: .bold))
                        
                        // START - HStack The Breeze's location
                        HStack {
                            Image(systemName: "location")
                            
                            Text(model1.address)
                                .font(.system(size:14))
                                .frame(height:40)
                        }// END - HStack The Breeze's location
                        .foregroundColor(Color.black.opacity(0.8))
                        
                        // START - HStack The Breeze's Distance
                        HStack {
                            Image(systemName: "mappin.and.ellipse")
                            Text(model1.distance)
                                .font(.system(size:14))
                        } // END - HStack The Breeze's Distance
                        .foregroundColor(Color.black.opacity(0.8))
                        
                        // The Breeze's Check In Button
                        Button {
                            buttonIsPressed1.toggle()
                            // Button's Animation
                            withAnimation(.easeInOut(duration: 0.3)){
                                animatingButton1.toggle()
                            }
                            animatingButton1.toggle()
                            //Navigation Link Tag 1
                            self.action = 1
                            //Counting locations visited
                            self.counter += 1
                            //Counting target left until next milestone
                            self.target -= 1
                        }label:
                        { Text(buttonIsPressed1 ? "Checked In" : "Check In")
                                .frame(maxWidth: .infinity, maxHeight: 10)
                            
                        }.buttonStyle(.bordered)
                            .background(buttonIsPressed1 ? LinearGradient(colors: [.blue, .purple], startPoint: .topTrailing, endPoint: .bottomLeading) : LinearGradient(colors: [.red, .orange], startPoint: .topTrailing, endPoint: .bottomLeading))
                            .cornerRadius(8)
                            .foregroundColor(.white)
                            .scaleEffect(animatingButton1 ? 0.9 : 1.0)
                    } // END - VStack The Breeze's Detail
                } // END - HStack The Breeze Card's Detail
                .padding(8)
            } // END - ZStack Glassmorphism Card The Breeze
        }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(counter: .constant(0), target: .constant(5), model1: cardModel(title: "The Breeze", image: UIImage(imageLiteralResourceName: "thebreeze"), address: "Jl. BSD Green Office Park, Kabupaten Tangerang", distance: "650 M", category: "Restaurant & Cafe"))
    }
}
