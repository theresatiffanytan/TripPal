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
    @State private var dataArray: [String] = []
    
    @StateObject private var vm = ViewModelDetail()
    
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
                TextField("Friend Name", text: $friendName)
                    .padding()
                    .background(Color.gray.opacity(0.2).cornerRadius(10))
                    .font(.headline)
            }
            .padding(.horizontal)

            // MARK: - FOR EACH SHOW FRIENDS NAME
            ForEach(dataArray, id: \.self) { friendName in
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.gray.opacity(0.3))
                        .padding(.horizontal)
                        .frame(height: 40)
                        
                    Text(friendName)
                } //: - ZStack with RoundedRectangle
            }
            
            //MARK: - BUTTON SAVE
            Button { // Action Button
                saveText()
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .padding(.horizontal)
                        .frame(height: 40)
                        
                    Text("Save")
                        .foregroundColor(.white)
                } //: - ZStack with RoundedRectangle
            }//: - Button Label
            .padding(.vertical)
        }//: - SCROLLVIEW (DETAIL PAGE)
        .background(Color("softGray").opacity(0.1))
        
    }//: - BODY
    
    //MARK: - FUNCTIONS
    func saveText() {
        dataArray.append(friendName)
    }
}

//MARK: - PREVIEW
struct DetailPageView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPageView()
    }
}
