//
//  DetailPageView.swift
//  TripPal
//
//  Created by Deka Primatio on 19/03/23.
//

import SwiftUI

struct DetailPageView: View {
    //MARK: - PROPERTY
    @State private var selection = 0

    // Slideshow Timer
    var slideshowTimer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()
    var images = ["slideshow-1",
                  "slideshow-2",
                  "slideshow-3",
                  "slideshow-4"]
    
    //MARK: - BODY
    var body: some View {
        
//        //MARK: - Slideshow with TabView & Animation
//        VStack {
//            //TabView untuk tampilan slideshow by SwiftUI
//            TabView(selection: $selection) {
//                ForEach(0..<4) { num in
//                    Image("\(images[num])")
//                        .resizable()
//                        .ignoresSafeArea()
//                        .scaledToFill()
//                } //: ForEach
//            } //: TabView
//            .tabViewStyle(PageTabViewStyle())
//            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
//            .onReceive(slideshowTimer, perform: { _ in
//                withAnimation { // Ternary Operator
//                    selection = selection < 4 ? selection + 1 : 0
//                }//: Animation
//            })//: onReceive
//        }//: - VStack (Slideshow with TabView & Animation)
//        .ignoresSafeArea()
//        .frame(width: 400, height: 250)
        
        ScrollView(.vertical, showsIndicators: false, content: {
            
            VStack {
                Image("slideshow-1")
                    .resizable()
                    .frame(width: 400, height: 250)
            }
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                
                HStack {
                    Image(
                }
            })
            
        })
    }
}

//MARK: - PREVIEW
struct DetailPageView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPageView()
    }
}
