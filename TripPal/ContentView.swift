//
//  ContentView.swift
//  TripPal
//
//  Created by Deka Primatio on 19/03/23.
// 

import SwiftUI

struct ContentView: View {
    @State var counter: Int = 0
    @State var target: Int = 5
    
    var body: some View {
        NavigationView{
            // START - Scroll View
            ScrollView {
                
                // START - VStack Home Page
                VStack (spacing: 20) {
                    
                    // START - ZStack background
                    ZStack {
                        Image("bg")
                            .frame(width:360, height: 100)
                            .padding(.top,-13)
                            .opacity(0.8)
                        
                        scoringCard(counter: $counter, target:$target)
                        
                        searchBar()
                    } // END - ZStack background
                    .padding(.top, 25)
                    
                    locationCard(counter: $counter, target:$target)
                    
                } // END - VStack Home Page
                .padding()
            } // END - Scroll View
        }
        } // END - Body View
    } // END - View
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    


