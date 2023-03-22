//
//  searchBar.swift
//  TripPal
//
//  Created by Theresa Tiffany on 22/03/23.
//

import SwiftUI

struct searchBar: View {
    @State private var searchText: String = ""
    
    var body: some View {
        
        // START - HStack Search Bar
        HStack {
            // Icon Magnifyingglass
            Image(systemName: "magnifyingglass")
                .foregroundColor(searchText.isEmpty ? Color.secondary : Color.blue)
            // Text Default
            TextField("search by text...", text: $searchText)
                .foregroundColor(.gray)
                // BEGIN - Adding X Mark
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x:10)
                        .foregroundColor(Color.accentColor)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            searchText = ""
                        }, alignment: .trailing
                ) // END - Adding X Mark
        } // END - HStack Search Bar
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 23)
                .fill(Color.white)
                .shadow(radius: 4,x: 0, y: 0))
        .offset(y:90)    }
}

struct searchBar_Previews: PreviewProvider {
    static var previews: some View {
        searchBar()
    }
}
