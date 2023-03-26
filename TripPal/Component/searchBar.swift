//
//  searchBar.swift
//  TripPal
//
//  Created by Theresa Tiffany on 22/03/23.
//

import SwiftUI

struct searchBar: View {
    
    //MARK: - PROPERTY
    @State private var searchText: String = ""
    let vm: ViewModelHome
    
    //MARK: - BODY CONTENT
    var body: some View {
        //MARK: - HSTACK SEARCH BAR
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(searchText.isEmpty ? Color.secondary : Color.black)
            
            TextField("Search by name...", text: $searchText)
                .foregroundColor(Color.black)
            //MARK: - OVERLAY X MARK FOR DELETE CURRENT TEXT
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x:10)
                        .foregroundColor(Color.accentColor)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            searchText = ""
                        }, alignment: .trailing
                ) //: - OVERLAY X MARK FOR DELETE CURRENT TEXT
                .onChange(of: searchText) { newValue in
                    //TODO: - Search Function by String Comparisons
                    vm.filterData(keyword: newValue)
                }
        } //: - HSTACK SEARCH BAR
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 23)
                .fill(Color.white)
                .shadow(radius: 4,x: 0, y: 0))
        .offset(y:90)
    }//: - BODY CONTENT
}

struct searchBar_Previews: PreviewProvider {
    static var previews: some View {
        searchBar(vm: ViewModelHome())
    }
}
