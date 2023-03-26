//
//  ContentView.swift
//  TripPal
//
//  Created by Deka Primatio on 19/03/23.
// 

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTY
    @State var counter: Int = 0
    @State var target: Int = 5
    @StateObject private var vm = ViewModelHome()
    
    var body: some View {
        // MARK: - NAVIGATION VIEW WRAPPER
        NavigationView{
            //MARK: - V. SCROLLVIEW FOR MAIN CONTENT
            ScrollView(.vertical, showsIndicators: false) {
                //MARK: - VSTACK WRAPPER FOR ALL CONTENT
                VStack (spacing: 20) {
                    // MARK: - ZSTACK BACKGROUND
                    ZStack {
                        Image("background")
                            .frame(width:360, height: 100)
                            .padding(.top,-13)
                            .opacity(0.8)
                        
                        //MARK: - SCORING CARD
                        scoringCard(counter: $counter, target:$target)
                        
                        searchBar(vm: vm)
                    } //: - ZSTACK BACKGROUND
                    .padding(.top, 25)
                    
//                    Spacer(minLength: 15)
                    
                    locationCard(counter: $counter, target: $target)
                    
//                    //MARK: - FOREACH MAIN CARD
//                    ForEach (vm.filteredData) { item in
//                        Card(counter: $counter, target: $target, model1: item)
//                    }//: - FOREACH MAIN CARD
                }//: - VSTACK WRAPPER FOR ALL CONTENT
                .padding()
            } //: - V. SCROLLVIEW FOR MAIN CONTENT
        }//: - NAVIGATION VIEW WRAPPER
    } // END - Body View
} // END - View


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



