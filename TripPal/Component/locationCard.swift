//
//  locationCard.swift
//  TripPal
//
//  Created by Theresa Tiffany on 22/03/23.
//

import SwiftUI

struct locationCard: View {
    @State private var action: Int? = 0
    @State private var animatingButton1: Bool = false
    @State var buttonIsPressed1: Bool = false
    @State private var animatingButton2: Bool = false
    @State var buttonIsPressed2: Bool = false
    @State private var animatingButton3: Bool = false
    @State var buttonIsPressed3: Bool = false
    @State private var animatingButton4: Bool = false
    @State var buttonIsPressed4: Bool = false
    @Binding var counter: Int
    @Binding var target: Int
    
    
    var body: some View {
        
            // START - VStack Locations Card
            VStack (spacing: 20){
                
                // Navigation Link for each location
                NavigationLink(destination: searchBar(), tag: 1, selection: $action) {EmptyView()}
                
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
                            Image("thebreeze")
                                .resizable()
                                .frame(width:110, height:110)
                                .cornerRadius(10)
                                .shadow(radius: 3)
                                .offset(x:5)
                            
                            Text("Restaurant & Cafe")
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
                            Text("The Breeze")
                                .font(.system(size: 20, weight: .bold))
                            
                            // START - HStack The Breeze's location
                            HStack {
                                Image(systemName: "location")
                                
                                Text("Jl. BSD Green Office Park, Kabupaten Tangerang")
                                    .font(.system(size:14))
                                    .frame(height:40)
                            }// END - HStack The Breeze's location
                            .foregroundColor(Color.black.opacity(0.8))
                            
                            // START - HStack The Breeze's Distance
                            HStack {
                                Image(systemName: "mappin.and.ellipse")
                                Text("650 m")
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
                
                // MARK: Card 2
                // START - ZStack Glassmorphism Card AEON Mall
                ZStack {
                    Color.white.opacity(0.85)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.2), radius: 4, x:0, y:4)
                        .blur(radius: 1)
                    
                    // START - HStack AEON Mall Card's Detail
                    HStack (spacing:5){
                        
                        // START - VStack AEON Mall's Image and Category
                        VStack (spacing:10) {
                            Image("aeon")
                                .resizable()
                                .frame(width:110, height:110)
                                .cornerRadius(10)
                                .shadow(radius: 3)
                                .offset(x:5)
                            
                            Text("Shopping Center")
                                .font(.system(size: 10, weight: .regular))
                                .foregroundColor(Color.white)
                                .padding(1)
                                .frame(width:110)
                                .background(.pink)
                                .cornerRadius(8)
                                .offset(x:5)
                        }// END - VStack AEON Mall's Image and Category
                        
                        Spacer()
                        
                        // START - VStack AEON Mall's Detail
                        VStack (alignment: .leading, spacing: 10) {
                            Text("AEON Mall")
                                .font(.system(size: 20, weight: .bold))
                            
                            // START - HStack AEON Mall's Location
                            HStack {
                                Image(systemName: "location")
                                
                                Text("Jl. BSD Raya Utama, Kabupaten Tangerang")
                                    .font(.system(size:14))
                                    .frame(height:40)
                            } // END - HStack AEON Mall's Detail
                            .foregroundColor(Color.black.opacity(0.8))
                            
                            // START - HStack AEON Mall's Distance
                            HStack {
                                Image(systemName: "mappin.and.ellipse")
                                Text("2.1 km")
                                    .font(.system(size:14))
                            } // END - HStack AEON Mall's Distance
                            .foregroundColor(Color.black.opacity(0.8))
                            
                            // AEON Mall's Check In Button
                            Button {
                                buttonIsPressed2.toggle()
                                // Button's Animation
                                withAnimation(.easeInOut(duration: 0.3)){
                                    animatingButton2.toggle()
                                }
                                animatingButton2.toggle()
                            }label:{
                                Text(buttonIsPressed2 ? "Checked In" : "Check In")
                                    .frame(maxWidth: .infinity, maxHeight: 10)
                                
                            } .buttonStyle(.bordered)
                                .background(buttonIsPressed2 ? LinearGradient(colors: [.blue, .purple], startPoint: .topTrailing, endPoint: .bottomLeading) : LinearGradient(colors: [.red, .orange], startPoint: .topTrailing, endPoint: .bottomLeading))
                                .cornerRadius(8)
                                .foregroundColor(.white)
                                .scaleEffect(animatingButton2 ? 0.9 : 1.0)
                        } // END - VStack AEON Mall's Detail
                    } // END - HStack AEON Mall Card's Detail
                    .padding(8)
                }  // END - ZStack Glassmorphism Card AEON Mall
                
                // MARK: Card 3
                // START - ZStack Glassmorphism Card Taman Kota
                ZStack {
                    Color.white.opacity(0.85)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.2), radius: 4, x:0, y:4)
                        .blur(radius: 1)
                    
                    // START - HStack Taman Kota Card's Detail
                    HStack (spacing:5){
                        // START - VStack Taman Kota's Image and Category
                        VStack (spacing:10) {
                            Image("tamankota")
                                .resizable()
                                .frame(width:110, height:110)
                                .cornerRadius(10)
                                .shadow(radius: 3)
                                .offset(x:5)
                            
                            Text("Garden & Park")
                                .font(.system(size: 10, weight: .regular))
                                .foregroundColor(Color.white)
                                .padding(1)
                                .frame(width:110)
                                .background(.green)
                                .cornerRadius(8)
                                .offset(x:5)
                        } // END - VStack Taman Kota's Image and Category
                        
                        Spacer()
                        
                        // START - VStack Taman Kota's Detail
                        VStack (alignment: .leading, spacing: 10) {
                            Text("Taman Kota")
                                .font(.system(size: 20, weight: .bold))
                            
                            // START - HStack Taman Kota's Location
                            HStack {
                                Image(systemName: "location")
                                
                                Text("Jl. Letnan Sutopo, Kota Tangerang Selatan")
                                    .font(.system(size:14))
                                    .frame(height:40)
                            } // END - HStack Taman Kota's Location
                            .foregroundColor(Color.black.opacity(0.8))
                            
                            // START - HStack Taman Kota's Distance
                            HStack {
                                Image(systemName: "mappin.and.ellipse")
                                
                                Text("5.1 km")
                                    .font(.system(size:14))
                            } // END - HStack Taman Kota's Distance
                            .foregroundColor(Color.black.opacity(0.8))
                            
                            // Taman Kota's Check In Button
                            Button {
                                buttonIsPressed3.toggle()
                                // Button's Animation
                                withAnimation(.easeInOut(duration: 0.3)){
                                    animatingButton3.toggle()
                                }
                                animatingButton3.toggle()
                            }label:{
                                Text(buttonIsPressed3 ? "Checked In" : "Check In")
                                    .frame(maxWidth: .infinity, maxHeight: 10)
                                
                            } .buttonStyle(.bordered)
                                .background(buttonIsPressed3 ? LinearGradient(colors: [.blue, .purple], startPoint: .topTrailing, endPoint: .bottomLeading) : LinearGradient(colors: [.red, .orange], startPoint: .topTrailing, endPoint: .bottomLeading))
                                .cornerRadius(8)
                                .foregroundColor(.white)
                                .scaleEffect(animatingButton3 ? 0.9 : 1.0)
                        } // END - VStack Taman Kota's Detail
                    } // END - HStack Taman Kota Card's Detail
                    .padding(8)
                } // END - ZStack Glassmorphism Card Taman Kota
                
                // MARK: Card 4
                // START - ZStack Glassmorphism Card Sport Center
                ZStack {
                    Color.white.opacity(0.85)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.2), radius: 4, x:0, y:4)
                        .blur(radius: 1)
                    
                    // START - HStack Sport Center Card's Detail
                    HStack (spacing:5){
                        // START - HStack Sport Center's Image and Category
                        VStack (spacing:10) {
                            Image("sport")
                                .resizable()
                                .frame(width:110, height:110)
                                .cornerRadius(10)
                                .shadow(radius: 3)
                                .offset(x:5)
                            
                            Text("Playground & Sports")
                                .font(.system(size: 10, weight: .regular))
                                .foregroundColor(Color.white)
                                .padding(1)
                                .frame(width:110)
                                .background(.purple)
                                .cornerRadius(8)
                                .offset(x:5)
                        } // END - HStack Sport Center's Image and Category
                        
                        Spacer()
                        
                        // START - VStack Sport Center's Detail
                        VStack (alignment: .leading, spacing: 10) {
                            Text("Dewantara Sport Center")
                                .font(.system(size: 18, weight: .bold))
                            
                            // START - HStack Sport Center's Location
                            HStack {
                                Image(systemName: "location")
                                
                                Text("Jl. Buaran Raya No.62, Kota Tangerang Selatan")
                                    .font(.system(size:14))
                                    .frame(height:40)
                            } // END - HStack Sport Center's Location
                            .foregroundColor(Color.black.opacity(0.8))
                            
                            // START - HStack Sport Center's Distance
                            HStack {
                                Image(systemName: "mappin.and.ellipse")
                                
                                Text("8.2 km")
                                    .font(.system(size:14))
                            } // END - HStack Sport Center's Distance
                            .foregroundColor(Color.black.opacity(0.8))
                            
                            // Sport Center's Check In Button
                            Button {
                                buttonIsPressed4.toggle()
                                // Button's Animation
                                withAnimation(.easeInOut(duration: 0.3)){
                                    animatingButton4.toggle()
                                }
                                animatingButton4.toggle()
                            }label:{
                                Text(buttonIsPressed4 ? "Checked In" : "Check In")
                                    .frame(maxWidth: .infinity, maxHeight: 10)
                                
                            } .buttonStyle(.bordered)
                                .background(buttonIsPressed4 ? LinearGradient(colors: [.blue, .purple], startPoint: .topTrailing, endPoint: .bottomLeading) : LinearGradient(colors: [.red, .orange], startPoint: .topTrailing, endPoint: .bottomLeading))
                                .cornerRadius(8)
                                .foregroundColor(.white)
                                .scaleEffect(animatingButton4 ? 0.9 : 1.0)
                        } // END - VStack Sport Center's Detail
                    } // END - HStack Sport Center Card's Detail
                    .padding(8)
                } // END - ZStack Glassmorphism Card Sport Center
                Spacer()
            } // END - VStack Locations Card
            .offset(y:25)
    }
}

struct locationCard_Previews: PreviewProvider {
    static var previews: some View {
        locationCard(counter: .constant(0), target: .constant(5))
    }
}
