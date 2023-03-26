//
//  Rating.swift
//  TripPal
//
//  Created by Deka Primatio on 26/03/23.
//

import SwiftUI

struct Rating: View {
    //MARK: - PROPERTY
    @State var rating: Int = 0
    
    //MARK: - BODY CONTENT
    var body: some View {
        VStack(spacing: 10) {
            //MARK: - HSTACK TITLE SECTION
            HStack {
                Text("Rate Your Trip")
                    .font(.system(size: 20, weight: .semibold))
                    Spacer()
            }//: - HSTACK TITLE SECTION
            .padding()
            
            //MARK: - ZSTACK OVERLAY MASKING starsView with overlayView
            ZStack {
                starsView
                    .overlay(overlayView.mask(starsView))
            }//: - ZSTACK (OVERLAY MASKING starsView with overlayView)
            .padding(.bottom)
        }
    }
    
    //MARK: - OVERLAY LAYER FOR COLORING THE STARS BASED ON GEOMETRY READER SIZE (WIDTH)
    private var overlayView: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: CGFloat(rating) / 5 * geometry.size.width)
            }
        }
        //Not Allowing Users to Click on Overlay Layer but still can be able to click on StarsView Layer and make this layer transparent
        .allowsHitTesting(false)
    }
    
    //MARK: - StarsView
    private var starsView: some View {
        //MARK: - HSTACK FOR STARS
        HStack {
            // ForEach until 5 Stars
            ForEach(1..<6) { index in
                Image(systemName: "star.fill")
                    .font(.title)
                    .foregroundColor(Color.gray)
                
                    //When Tapped it will rate the stars based on index
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            rating = index
                        }
                    }
            }//: - FOREACH STARS
        }//: - HSTACK FOR STARS
    }//: - BODY CONTENT
}

struct Rating_Previews: PreviewProvider {
    static var previews: some View {
        Rating()
            .previewLayout(.sizeThatFits)
    }
}
