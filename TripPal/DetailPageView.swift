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
        
//                //MARK: - Slideshow with TabView & Animation
//                VStack {
//                    //TabView untuk tampilan slideshow by SwiftUI
//                    TabView(selection: $selection) {
//                        ForEach(0..<4) { num in
//                            Image("\(images[num])")
//                                .resizable()
//                                .ignoresSafeArea()
//                                .scaledToFill()
//                        } //: ForEach
//                    } //: TabView
//                    .tabViewStyle(PageTabViewStyle())
//                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
//                    .onReceive(slideshowTimer, perform: { _ in
//                        withAnimation { // Ternary Operator
//                            selection = selection < 4 ? selection + 1 : 0
//                        }//: Animation
//                    })//: onReceive
//                }//: - VStack (Slideshow with TabView & Animation)
//                .ignoresSafeArea()
//                .frame(width: 400, height: 250)
        
        //MARK: - DETAIL PAGE SCROLLVIEW (VERTICAL)
        ScrollView(.vertical, showsIndicators: false) {

            VStack {
                Image("slideshow-1")
                    .resizable()
                    .frame(width: 400, height: 250)
            }

            //MARK: - PLACES CATEGORY SCROLLVIEW (HORIZONTAL)
            ScrollView(.horizontal, showsIndicators: false) {

                HStack(spacing: 16) {
                    HStack {

                        Image("thebreeze")
                            .resizable()
                            .frame(width:50, height:50)
                            .cornerRadius(10)
                            .shadow(radius: 3)

                        VStack (spacing: 5) {
                            Text("Katsukita")
                                .font(.system(size: 14, weight: .bold))

                            Text("Restaurant & Cafe")
                                .font(.system(size: 10, weight: .semibold))
                                .foregroundColor(Color.white)
                                .padding(2)
                                .frame(width:110)
                                .background(.blue)
                                .cornerRadius(8)
                        }
                    }// - HSTACK CARD 1
                    .padding(8)
                    .background(.red)
                    .cornerRadius(10)
                    .shadow(radius: 5)

                    HStack (spacing:10) {

                        Image("thebreeze")
                            .resizable()
                            .frame(width:50, height:50)
                            .cornerRadius(10)
                            .shadow(radius: 3)

                        VStack (spacing: 5) {
                            Text("Katsukita")
                                .font(.system(size: 14, weight: .bold))

                            Text("Restaurant & Cafe")
                                .font(.system(size: 10, weight: .semibold))
                                .foregroundColor(Color.white)
                                .padding(2)
                                .frame(width:110)
                                .background(.blue)
                                .cornerRadius(8)
                        }
                    } // - HSTACK CARD 2
                    .padding(8)
                    .background(.green)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                }// - HSTACK WRAPPER CARD
                .padding()
            }//: - PLACES CATEGORY SCROLLVIEW (HORIZONTAL)

            //MARK: - BUTTON SAVE
            Button { // Action Button
                print("saved")
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 361, height: 40)
                    Text("Save")
                        .foregroundColor(.white)
                } //: - ZStack with RoundedRectangle
            }
        }
    }
}

//MARK: - PREVIEW
struct DetailPageView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPageView()
    }
}
