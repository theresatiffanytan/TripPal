//
//  DetailPageView.swift
//  TripPal
//
//  Created by Deka Primatio on 19/03/23.
//

import SwiftUI

struct DetailPageView: View {
    //MARK: - PROPERTY    
    @StateObject private var vmDetail = ViewModelDetail()
    
    //MARK: - BODY
    var body: some View {
        
        //MARK: - DETAIL PAGE SCROLLVIEW (VERTICAL)
        ScrollView(.vertical, showsIndicators: false) {
            
            Slideshow()
            
            //MARK: - PLACES CATEGORY SCROLLVIEW (HORIZONTAL)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(vmDetail.data) { item in
                        CategoryCard(model: item)
                    }
                }
                .padding()
            }//: - PLACES CATEGORY SCROLLVIEW (HORIZONTAL)
            
            //MARK: - GRID PHOTOS FOR MEMORIES
            PhotoPicker()
            
            //MARK: - YOUR TRIPS BUDDY
            TripBuddy()
            
            //MARK: - REVIEWS WITH MASK
            Rating()
        }//: - SCROLLVIEW (DETAIL PAGE)
    }//: - BODY
}

//MARK: - PREVIEW
struct DetailPageView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPageView()
    }
}
