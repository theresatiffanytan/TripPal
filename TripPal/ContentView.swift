//
//  ContentView.swift
//  TripPal
//
//  Created by Deka Primatio on 19/03/23.
// 

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    @State private var animatingButton1: Bool = false
//    @State private var buttonText1: String = "Check In"
    @State private var animatingButton2: Bool = false
    @State private var animatingButton3: Bool = false
    @State private var animatingButton4: Bool = false
    
    
    var body: some View {

        ScrollView {
            VStack (spacing: 20) {
                
                    // Untuk logo dan search bar
                    ZStack {
                        Image("bg")
                            .frame(width:360, height: 100)
                            .padding(.top,-13)
                            .opacity(0.8)
                           
                        HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(searchText.isEmpty ? Color.secondary : Color.blue)
                                TextField("search by text...", text: $searchText)
                                    .foregroundColor(.gray)
                                    .overlay(
                                        Image(systemName: "xmark.circle.fill")
                                            .padding()
                                            .offset(x:10)
                                            .foregroundColor(Color.accentColor)
                                            .opacity(searchText.isEmpty ? 0.0 : 1.0)
                                            .onTapGesture {
                                                searchText = ""
                                            }, alignment: .trailing
                                    )
                            }
                            .font(.headline)
                            .padding()
                            .background(
                            RoundedRectangle(cornerRadius: 23)
                                .fill(Color.white)
                            .shadow(radius: 4,x: 0, y: 0))
                            .offset(y:-100)
                        
                        
                                ZStack {
                                    Color.white.opacity(0.85)
                                        .cornerRadius(20)
                                        .shadow(color: Color.black.opacity(0.2), radius: 4, x:0, y:4)
                                        .blur(radius: 1)
                                        .frame(width:365, height:170)
                                    
                                    HStack (spacing:5){
                                        
                                            Image("iconHome")
                                                .resizable()
                                                .frame(width:130, height:130)
                                                .cornerRadius(10)
                                                .shadow(radius: 3)
                                                .offset(x:5)
                                        
                                        
                                        Spacer()
                                        
                                        VStack (alignment: .leading, spacing: 10) {
                                            Text("Leaderboard")
                                                .font(.system(size: 20, weight: .bold))
                                            
                                            HStack {
                                                Image(systemName: "location")
                                                
                                                Text("Jl. BSD Green Office Park, Kabupaten Tangerang")
                                                    .font(.system(size:14))
                                                    .frame(height:40)
                                            }
                                            .foregroundColor(Color.black.opacity(0.8))
                                            
                                            HStack {
                                                Image(systemName: "mappin.and.ellipse")
                                                
                                                Text("650 m")
                                                    .font(.system(size:14))
                                            }
                                            .foregroundColor(Color.black.opacity(0.8))
                                            
                                        }
                                    }
                                    .padding(8)
                                }.offset(y:30)
                    }.padding(.top, 25)
                    
                    
                    // Card 1
                VStack (spacing: 20){
                    ZStack {
                        Color.white.opacity(0.85)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 4, x:0, y:4)
                            .blur(radius: 1)
                        
                        HStack (spacing:5){
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
                                .foregroundColor(Color.black.opacity(0.8))
                                
                                HStack {
                                    Image(systemName: "mappin.and.ellipse")
                                    
                                    Text("650 m")
                                        .font(.system(size:14))
                                }
                                .foregroundColor(Color.black.opacity(0.8))
                                
                                Button {
                                    
                                    withAnimation(.easeIn(duration: 0.3)){
                                        animatingButton1.toggle()
                                    }
                                    print("check in")
                                }   label:{
                                    Text("Check In")
                                        .frame(maxWidth: .infinity, maxHeight: 10)
                                    
                                } .buttonStyle(.bordered)
                                    .background(LinearGradient(colors: [.red, .orange], startPoint: .topTrailing, endPoint: .bottomLeading))
                                    .cornerRadius(8)
                                    .foregroundColor(.white)
                                    .scaleEffect(animatingButton1 ? 0.9 : 1.0)
                            }
                        }
                        .padding(8)
                    }
                    
                    
                    //                Card 2
                    ZStack {
                        Color.white.opacity(0.85)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 4, x:0, y:4)
                            .blur(radius: 1)
                        
                        HStack (spacing:5){
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
                                .foregroundColor(Color.black.opacity(0.8))
                                
                                HStack {
                                    Image(systemName: "mappin.and.ellipse")
                                    
                                    
                                    Text("2.1 km")
                                        .font(.system(size:14))
                                }
                                .foregroundColor(Color.black.opacity(0.8))
                                
                                Button {
                                    withAnimation(.easeIn(duration: 0.3)){
                                        animatingButton2.toggle()
                                    }
                                    print("check in")
                                }   label:{
                                    Text("Check In")
                                        .frame(maxWidth: .infinity, maxHeight: 10)
                                } .buttonStyle(.bordered)
                                    .background(LinearGradient(colors: [.red, .orange], startPoint: .topTrailing, endPoint: .bottomLeading))
                                    .cornerRadius(8)
                                    .foregroundColor(.white)
                                    .scaleEffect(animatingButton2 ? 0.9 : 1.0)
                            }
                        }
                        .padding(8)
                    }
                    
                    //                Card 3
                    ZStack {
                        Color.white.opacity(0.85)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 4, x:0, y:4)
                            .blur(radius: 1)
                        
                        HStack (spacing:5){
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
                                .foregroundColor(Color.black.opacity(0.8))
                                
                                HStack {
                                    Image(systemName: "mappin.and.ellipse")
                                    
                                    Text("5.1 km")
                                        .font(.system(size:14))
                                }
                                .foregroundColor(Color.black.opacity(0.8))
                                
                                Button {
                                    withAnimation(.easeIn(duration: 0.3)){
                                        animatingButton3.toggle()
                                    }
                                    print("check in")
                                }   label:{
                                    Text("Check In")
                                        .frame(maxWidth: .infinity, maxHeight: 10)
                                } .buttonStyle(.bordered)
                                    .background(LinearGradient(colors: [.red, .orange], startPoint: .topTrailing, endPoint: .bottomLeading))
                                    .cornerRadius(8)
                                    .foregroundColor(.white)
                                    .scaleEffect(animatingButton3 ? 0.9 : 1.0)
                            }
                        }
                        .padding(8)
                    }
                    
                    //                Card 4
                    
                    ZStack {
                        Color.white.opacity(0.85)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 4, x:0, y:4)
                            .blur(radius: 1)
                        
                        HStack (spacing:5){
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
                                .foregroundColor(Color.black.opacity(0.8))
                                
                                HStack {
                                    Image(systemName: "mappin.and.ellipse")
                                    
                                    Text("8.2 km")
                                        .font(.system(size:14))
                                }
                                .foregroundColor(Color.black.opacity(0.8))
                                
                                Button {
                                    withAnimation(.easeIn(duration: 0.3)){
                                        animatingButton4.toggle()
                                    }
                                    print("check in")
                                }   label:{
                                    Text("Check In")
                                        .frame(maxWidth: .infinity, maxHeight: 10)
                                } .buttonStyle(.bordered)
                                    .background(LinearGradient(colors: [.red, .orange], startPoint: .topTrailing, endPoint: .bottomLeading))
                                    .cornerRadius(8)
                                    .foregroundColor(.white)
                                    .scaleEffect(animatingButton4 ? 0.9 : 1.0)
                            }
                        }
                        .padding(8)
                    }
                    Spacer()
                }.offset(y:45)
            }
                .padding()

        }
                            }
 
        }
        
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

