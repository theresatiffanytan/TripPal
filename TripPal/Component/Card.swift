//
//  MainCard.swift
//  TripPal
//
//  Created by Theresa Tiffany on 24/03/23.
//

import SwiftUI

struct Card: View {
    //MARK: - PROPERTY
    @State private var action: Int? = 0
    @State private var animatingButton1: Bool = false
    @State var buttonIsPressed1: Bool = false
    @Binding var counter: Int
    @Binding var target: Int
    
    //Getting Data Type from cardModel
    var model1: cardModel
    
    //MARK: - BODY CONTENT
    var body: some View {
        //MARK: - NAVIGATIONLINK TO JUMP TO EACH CONTENT PAGE
        NavigationLink(destination: DetailPageView(), tag: 1, selection: $action) {EmptyView()}
        
        //MARK: - ZSTACK MAIN CARD LAYOUT (Glassmorphism)
        ZStack {
            Color.white.opacity(0.85)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 4, x:0, y:4)
                .blur(radius: 1)
            
            //MARK: - ALL CARD CONTENT
            HStack(spacing:5) {
                //MARK: - VSTACK FOR IMAGE & CATEGORY
                VStack (spacing:10) {
                    Image(uiImage: model1.image)
                        .resizable()
                        .frame(width:110, height:110)
                        .cornerRadius(10)
                        .shadow(radius: 3)
                        .offset(x:5)
                    
                    Text(model1.category)
                        .font(.system(size: 10, weight: .regular))
                        .foregroundColor(Color.white)
                        .padding(1)
                        .frame(width:110)
                        .background(.blue)
                        .cornerRadius(8)
                        .offset(x:5)
                }//: -  VSTACK FOR IMAGE & CATEGORY
                
                Spacer()
                
                //MARK: - VSTACK FOR COPY WRITING & BUTTON
                VStack (alignment: .leading, spacing: 10) {
                    Text(model1.title)
                        .font(.system(size: 20, weight: .bold))
                    //HSTACK FOR ICON & TEXT ADDRESS
                    HStack {
                        Image(systemName: "location")
                        
                        Text(model1.address)
                            .font(.system(size:14))
                            .frame(height:40)
                    }
                    .foregroundColor(Color.black.opacity(0.8))
                    
                    //HSTACK FOR ICON & TEXT DISTANCES
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                        Text(model1.distance)
                            .font(.system(size:14))
                    }
                    .foregroundColor(Color.black.opacity(0.8))
                    
                    //MARK: - BUTTON CHECKED IN
                    Button {
                        buttonIsPressed1.toggle()
                        // Button's Animation
                        withAnimation(.easeInOut(duration: 0.3)){
                            animatingButton1.toggle()
                        }
                        animatingButton1.toggle()
                        //Navigation Link Tag 1
                        self.action = 1
                        //Counting locations visited
                        self.counter += 1
                        //Counting target left until next milestone
                        self.target -= 1
                    }label: {
                        Text(buttonIsPressed1 ? "Checked In" : "Check In")
                            .frame(maxWidth: .infinity, maxHeight: 10)
                    }
                    .buttonStyle(.bordered)
                    .background(buttonIsPressed1 ? LinearGradient(colors: [.blue, .purple], startPoint: .topTrailing, endPoint: .bottomLeading) : LinearGradient(colors: [.red, .orange], startPoint: .topTrailing, endPoint: .bottomLeading))
                    .cornerRadius(8)
                    .foregroundColor(.white)
                    .scaleEffect(animatingButton1 ? 0.9 : 1.0)
                } //: - VSTACK FOR COPY WRITING & BUTTON
            } //: - ALL CARD CONTENT
            .padding(8)
        }//: - ZSTACK MAIN CARD LAYOUT (Glassmorphism)
    }//: - BODY CONTENT
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(counter: .constant(0), target: .constant(5), model1: cardModel(title: "The Breeze", image: UIImage(imageLiteralResourceName: "thebreeze"), address: "Jl. BSD Green Office Park, Kabupaten Tangerang", distance: "650 M", category: "Restaurant & Cafe"))
            .previewLayout(.sizeThatFits)
    }
}
