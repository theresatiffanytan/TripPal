//
//  Slideshow.swift
//  TripPal
//
//  Created by Deka Primatio on 22/03/23.
//

import SwiftUI

struct Slideshow: View {
    //MARK: - PROPERTY
    @State private var selection = 0 // Dimulai dari gambar 0 (pertama)
    
    // Slideshow Timer, slide for every 4 sec
    var slideshowTimer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()
    var images = ["slideshow-1",
                  "slideshow-2",
                  "slideshow-3",
                  "slideshow-4"]
    
    var body: some View {
        //MARK: - Slideshow with TabView & Animation
        VStack {
            //TabView untuk tampilan slideshow by SwiftUI
            TabView(selection: $selection) {
                ForEach(0..<4) { num in
                    Image("\(images[num])")
                        .resizable()
                        .ignoresSafeArea()
                        .scaledToFill()
                } //: ForEach
            } //: TabView
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .onReceive(slideshowTimer, perform: { _ in
                withAnimation { // Ternary Operator
                    selection = selection < 4 ? selection + 1 : 0
                }//: Animation
            })//: onReceive
        }//: - VStack (Slideshow with TabView & Animation)
        .frame(width: 400, height: 250)
        
    }
}

struct Slideshow_Previews: PreviewProvider {
    static var previews: some View {
        Slideshow()
            .previewLayout(.sizeThatFits)
    }
}
