//
//  DetailPageView.swift
//  TripPal
//
//  Created by Deka Primatio on 19/03/23.
//

import SwiftUI

struct DetailPageView: View {
    //MARK: - PROPERTY
    @State private var friendName: String = ""
    @StateObject var vm = ViewModel()
    
    //MARK: - BODY
    var body: some View {
        
        //MARK: - DETAIL PAGE SCROLLVIEW (VERTICAL)
        ScrollView(.vertical, showsIndicators: false) {

            VStack {
                Slideshow()
            }

            //MARK: - PLACES CATEGORY SCROLLVIEW (HORIZONTAL)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(vm.data) { item in
                        CategoryCard(model: item)
                    }
                }
                .padding()
            }//: - PLACES CATEGORY SCROLLVIEW (HORIZONTAL)
            
            //MARK: - GRID PHOTOS FOR MEMORIES
            HStack {
                Text("Memories")
                    .font(.system(size: 20, weight: .semibold))
                Spacer()
                Image(systemName: "plus.circle.fill")
                    .imageScale(.large)
            }
            .padding(.horizontal)
            
            //MARK: - GRID PHOTOS WITH SCROLLVIEW (HORIZONTAL)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows:[GridItem(.adaptive(minimum: 100), spacing: 1.2)]) {
                    ForEach(feedData) { item in
                        GridImage(feed: item)
                            .frame(width: 100, height: 100)
                            .clipped()
                    }
                }
                .padding(.horizontal)
            }//: - GRID PHOTOS WITH SCROLLVIEW (HORIZONTAL)
            
            HStack {
                Text("Your Trip Buddy")
                    .font(.system(size: 20, weight: .semibold))
                Spacer()
            }
            .padding()
            
            VStack {
                TextField(friendName, text: $friendName)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .font(.headline)
            }
            .padding(.horizontal)
            
            HStack {
                Text("How Do You Feel ?")
                    .font(.system(size: 20, weight: .semibold))
                Spacer()
                Image(systemName: "plus.circle.fill")
                    .imageScale(.large)
            }
            .padding()

            //MARK: - BUTTON SAVE
            Button { // Action Button
                
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .padding(.horizontal)
                        .frame(height: 40)
                        
                    Text("Save")
                        .foregroundColor(.white)
                } //: - ZStack with RoundedRectangle
            }//: - Button Label
        }//: - SCROLLVIEW (DETAIL PAGE)
        .background(Color("softGray").opacity(0.1))
        
    }//: - BODY
    
    //MARK: - FUNCTIONS

}

//MARK: - PREVIEW
struct DetailPageView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPageView()
    }
}
