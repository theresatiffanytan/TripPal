//
//  GridPhotos.swift
//  TripPal
//
//  Created by Deka Primatio on 22/03/23.
//

import SwiftUI

struct GridImage: View {
    @State var feed: FeedModel = feedData[0]
    
    var body: some View {
        Image(feed.imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
}

struct GridImage_Previews: PreviewProvider {
    static var previews: some View {
        GridImage()
    }
}

