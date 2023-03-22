//
//  SwiftUIView.swift
//  TripPal
//
//  Created by Deka Primatio on 21/03/23.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        HStack(spacing: 5) {
            Image(systemName: "list.clipboard")
                .imageScale(.large)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(
                        searchText.isEmpty ? Color.secondary : Color.white
                    )
                
                TextField("Search by name...", text: $searchText)
                    .foregroundColor(.white)
                    .overlay(
                        Image(systemName: "xmark.circle.fill")
                            .padding()
                            .offset(x: 10)
                            .background(.red)
                            .foregroundColor(Color.accentColor)
                            // showing x mark if the searchtext not empty
                            .opacity(searchText.isEmpty ? 0.0 : 1.0)
                            // tap gesture to delete all text
                            .onTapGesture {
                                searchText = ""
                            }
                        ,alignment: .trailing
                    )
            }
            .font(.headline)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.gray)
                    .shadow(color: .gray.opacity(0.7),
                            radius: 10, x: 0, y: 0)
            )
        }
        .padding()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        //Testing in light mode
        Group {
            SwiftUIView()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.light)
            
            SwiftUIView()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
        
//        SwiftUIView()
    }
}
