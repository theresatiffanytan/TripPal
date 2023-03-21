//
//  ContentView.swift
//  TripPal
//
//  Created by Deka Primatio on 19/03/23.
// 

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    @State private var animatingButton: Bool = false
    
    var body: some View {
        
        ZStack {
            Image("wallpaper1")
                .frame(maxWidth: 361, maxHeight: 200)
                .blur(radius: 1)
            
            VStack (spacing: 20) {
                
                // Untuk logo dan search bar
                HStack (spacing: 11) {
                    Image("iconHome")
                        .resizable()
                        .frame(width: 55, height: 55)
                    
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
                        .shadow(radius: 10,x: 0, y: 0))
                }.padding(.top, 25)
                
                // Card 1
                ZStack {
                    Color.white.opacity(0.85)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x:0, y:10)
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
                                    animatingButton.toggle()
                                }
                                print("check in")
                            }   label:{
                                
                                Text("Check In")
                                    .frame(maxWidth: .infinity, maxHeight: 10)
                                
                            } .buttonStyle(.bordered)
                                .background(LinearGradient(colors: [.red, .orange], startPoint: .topTrailing, endPoint: .bottomLeading))
                                .cornerRadius(8)
                                .foregroundColor(.white)
                                .scaleEffect(animatingButton ? 0.9 : 1.0)
                        }
                    }
                    .padding(8)
                }
                
                //                Card 2
                ZStack {
                    Color.white.opacity(0.85)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x:0, y:10)
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
                                print("check in")
                            }   label:{
                                Text("Check In")
                                    .frame(maxWidth: .infinity, maxHeight: 10)
                            } .buttonStyle(.bordered)
                                .background(LinearGradient(colors: [.red, .orange], startPoint: .topTrailing, endPoint: .bottomLeading))
                                .cornerRadius(8)
                                .foregroundColor(.white)
                                .scaleEffect(animatingButton ? 0.9 : 1.0)
                        }
                    }
                    .padding(8)
                }
                
                //                Card 3
                ZStack {
                    Color.white.opacity(0.85)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x:0, y:10)
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
                                print("check in")
                            }   label:{
                                Text("Check In")
                                    .frame(maxWidth: .infinity, maxHeight: 10)
                            } .buttonStyle(.bordered)
                                .background(LinearGradient(colors: [.red, .orange], startPoint: .topTrailing, endPoint: .bottomLeading))
                                .cornerRadius(8)
                                .foregroundColor(.white)
                                .scaleEffect(animatingButton ? 0.9 : 1.0)
                        }
                    }
                    .padding(8)
                }
                
                //                Card 4
                
                ZStack {
                    Color.white.opacity(0.85)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x:0, y:10)
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
                                print("check in")
                            }   label:{
                                Text("Check In")
                                    .frame(maxWidth: .infinity, maxHeight: 10)
                            } .buttonStyle(.bordered)
                                .background(LinearGradient(colors: [.red, .orange], startPoint: .topTrailing, endPoint: .bottomLeading))
                                .cornerRadius(8)
                                .foregroundColor(.white)
                                .scaleEffect(animatingButton ? 0.9 : 1.0)
                        }
                    }
                    .padding(8)
                }
                Spacer()
            }
            .padding()
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
