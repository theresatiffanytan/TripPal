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
            Text("Trip Pal")
                .font(.system(size: 36, weight: .bold))
                .offset(x: -125)
            
            Divider()
            
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
            
            
            HStack (spacing:20){
                VStack {
                    Image("thebreeze")
                        .resizable()
                        .frame(width:110, height:110)
                        .cornerRadius(10)
                        .offset(x:-30)
                        .shadow(radius: 3)
                    
                    Text("Restaurant & Cafe")
                        .font(.system(size: 11, weight: .regular))
                        .foregroundColor(Color.white)
                        .padding(1)
                        .frame(width:110)
                        .background(.pink)
                        .cornerRadius(8)
                        .offset(x:-30)
                    
                }
                
                
                
                VStack (alignment: .leading) {
                    Text("The Breeze")
                        .font(.system(size: 28, weight: .bold))
                        .offset(x:-35, y:-48)
                    
                        
                    
                }
            }
            
            .frame(width: 361, height: 155)
            .background(.white)
            .cornerRadius(20)
            .shadow(radius: 6)
            
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
