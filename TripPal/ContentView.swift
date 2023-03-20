//
//  ContentView.swift
//  TripPal
//
//  Created by Deka Primatio on 19/03/23.
// 

import SwiftUI

struct ContentView: View {
    @State private var searchFood: String = ""
    var body: some View {
        // HStack Kolom Search
        
        VStack (spacing: 20) {
            
            HStack {
                TextField("Search resaturant, garden, etc ...", text: $searchFood) // Text: State Empty String
                    .disableAutocorrection(true) // Disable Auto Correct
                    .padding(.leading, 24.0) // Padding Tulisan didalam TextField
            } // HStack Kolom Search
            // Frame harus diatas Property yang lain
            // .infinity = menyesuaikan dari layout parent-nya yaitu VStack
            .frame(minWidth: 0, maxWidth: 361, minHeight: 50, maxHeight: 50)
            // Customize Dimensi Kolom Search
            .background(.white)
            .cornerRadius(50.0)
            .shadow(radius: 6)
            
            HStack (spacing:5){
                VStack (spacing:10) {
                    Image("thebreeze")
                        .resizable()
                        .frame(width:110, height:110)
                        .cornerRadius(10)
                        .shadow(radius: 3)
                        .offset(x:5)
                    
                    Text("Restaurant & Cafe")
                        .font(.system(size: 11, weight: .regular))
                        .foregroundColor(Color.white)
                        .padding(1)
                        .frame(width:110)
                        .background(.blue)
                        .cornerRadius(8)
                        .offset(x:5)
                }
                
                Spacer()
                
                VStack (alignment: .leading, spacing: 10) {
                    Text("The Breeze")
                        .font(.system(size: 20, weight: .bold))
                    
                    HStack {
                        Image(systemName: "location")
                        
                        Text("Jl. BSD Green Office Park, Kabupaten Tangerang")
                            .font(.system(size:14))
                            .frame(height:40)
                    }
                    .foregroundColor(.gray)
                    
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(.gray)
                        
                        Text("650 m")
                            .font(.system(size:14))
                    }
                    .foregroundColor(.gray)
                    
                    Button {
                        print("check in")
                    }   label:{
                        Text("Check In")
                            .frame(maxWidth: .infinity, maxHeight: 10)
                    } .buttonStyle(.bordered)
                        .background(.orange)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                }
            }
            .padding(8)
            .background(.white)
            .cornerRadius(20)
            .shadow(radius: 6)
            
            HStack (spacing:5){
                VStack (spacing:10) {
                    Image("aeon")
                        .resizable()
                        .frame(width:110, height:110)
                        .cornerRadius(10)
                        .shadow(radius: 3)
                        .offset(x:5)
                    
                    Text("Shopping Center")
                        .font(.system(size: 11, weight: .regular))
                        .foregroundColor(Color.white)
                        .padding(1)
                        .frame(width:110)
                        .background(.pink)
                        .cornerRadius(8)
                        .offset(x:5)
                }
                
                Spacer()
                
                VStack (alignment: .leading, spacing: 10) {
                    Text("AEON Mall")
                        .font(.system(size: 20, weight: .bold))
                    
                    HStack {
                        Image(systemName: "location")
                        
                        Text("Jl. BSD Raya Utama, Kabupaten Tangerang")
                            .font(.system(size:14))
                            .frame(height:40)
                    }
                    .foregroundColor(.gray)
                    
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(.gray)
                        
                        Text("2.1 km")
                            .font(.system(size:14))
                    }
                    .foregroundColor(.gray)
                    
                    Button {
                        print("check in")
                    }   label:{
                        Text("Check In")
                            .frame(maxWidth: .infinity, maxHeight: 10)
                    } .buttonStyle(.bordered)
                        .background(.orange)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                }
            }
            .padding(8)
            .background(.white)
            .cornerRadius(20)
            .shadow(radius: 6)
            
            HStack (spacing:5){
                VStack (spacing:10) {
                    Image("tamankota")
                        .resizable()
                        .frame(width:110, height:110)
                        .cornerRadius(10)
                        .shadow(radius: 3)
                        .offset(x:5)
                    
                    Text("Garden & Park")
                        .font(.system(size: 11, weight: .regular))
                        .foregroundColor(Color.white)
                        .padding(1)
                        .frame(width:110)
                        .background(.green)
                        .cornerRadius(8)
                        .offset(x:5)
                }
                
                Spacer()
                
                VStack (alignment: .leading, spacing: 10) {
                    Text("Taman Kota")
                        .font(.system(size: 20, weight: .bold))
                    
                    HStack {
                        Image(systemName: "location")
                        
                        Text("Jl. Letnan Sutopo, Kota Tangerang Selatan")
                            .font(.system(size:14))
                            .frame(height:40)
                    }
                    .foregroundColor(.gray)
                    
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(.gray)
                        
                        Text("5.1 km")
                            .font(.system(size:14))
                    }
                    .foregroundColor(.gray)
                    
                    Button {
                        print("check in")
                    }   label:{
                        Text("Check In")
                            .frame(maxWidth: .infinity, maxHeight: 10)
                    } .buttonStyle(.bordered)
                        .background(.orange)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                }
            }
            .padding(8)
            .background(.white)
            .cornerRadius(20)
            .shadow(radius: 6)
            
            HStack (spacing:5){
                VStack (spacing:10) {
                    Image("sport")
                        .resizable()
                        .frame(width:110, height:110)
                        .cornerRadius(10)
                        .shadow(radius: 3)
                        .offset(x:5)
                    
                    Text("Playground & Sports")
                        .font(.system(size: 11, weight: .regular))
                        .foregroundColor(Color.white)
                        .padding(1)
                        .frame(width:110)
                        .background(.purple)
                        .cornerRadius(8)
                        .offset(x:5)
                }
                
                Spacer()
                
                VStack (alignment: .leading, spacing: 10) {
                    Text("Dewantara Sport Center")
                        .font(.system(size: 18, weight: .bold))
                    
                    HStack {
                        Image(systemName: "location")
                        
                        Text("Jl. Buaran Raya No.62, Kota Tangerang Selatan")
                            .font(.system(size:14))
                            .frame(height:40)
                    }
                    .foregroundColor(.gray)
                    
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(.gray)
                        
                        Text("8.2 km")
                            .font(.system(size:14))
                    }
                    .foregroundColor(.gray)
                    
                    Button {
                        print("check in")
                    }   label:{
                        Text("Check In")
                            .frame(maxWidth: .infinity, maxHeight: 10)
                    } .buttonStyle(.bordered)
                        .background(.orange)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                }
            }
            .padding(8)
            .background(.white)
            .cornerRadius(20)
            .shadow(radius: 6)
            
            Spacer()
        }
        .padding()
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
