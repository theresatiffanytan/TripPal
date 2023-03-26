//
//  PhotoPicker.swift
//  TripPal
//
//  Created by Deka Primatio on 26/03/23.
//

import PhotosUI // To Access PhotoPicker
import SwiftUI

struct PhotoPicker: View {
    //MARK: - PROPERTY
    @State private var selectedImage: [PhotosPickerItem] = []
    @State private var selectedImageData: [Data] = []
    
    //MARK: - BODY CONTENT
    var body: some View {
        
        //MARK: - VStack Main Wrapper
        VStack {
            // MARK: - HStack for Memories & Plus Button
            HStack {
                Text("Memories")
                    .font(.system(size: 20, weight: .semibold))
                Spacer()
                
                //Photo Picker
                PhotosPicker(selection: $selectedImage, maxSelectionCount: 5, matching: .images, label: {
                    Image(systemName: "plus.circle.fill")
                        .tint(.blue)
                        .font(.title)
                })//: - Photo Picker
                
                //OnChange with Task Async Await to Load Default Photo Picker Data
                .onChange(of: selectedImage) { newItem in
                    Task {
                        selectedImage = []
                        for item in newItem {
                            if let data = try? await item.loadTransferable(type: Data.self) {
                                selectedImageData.append(data)
                            }//: - Append new item from data
                        }//: - For Loop for every item available
                    }//: - Task Async Await
                }// : - OnChange for SelectedImages
            } //: - HStack for Memories & Plus Button
            .padding(.horizontal)
            
            //MARK: - IF STATEMENT FOR IMAGE UPLOADED
            if selectedImageData.count > 0 {
                //MARK: - SCROLLVIEW FOR SHOW UPLOADED IMAGES
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    //MARK: - LazyVGrid
                    LazyVGrid(columns: [.init(.adaptive(minimum: 100)), .init(.adaptive(minimum: 100))]) {
                        
                        ForEach(selectedImageData, id: \.self) { dataItem in
                            if let dataItem = dataItem, let uiImage = UIImage(data: dataItem){
                                Image(uiImage: uiImage)
                                    .resizable()
                                    .frame(height: 100)
                                    .aspectRatio(contentMode: .fit)
                            } //: - If Statement for Image Size
                        }//: - ForEach Uploaded Image
                    }//: - LazyVGrid
                    .padding(.horizontal)
                }
            } else {
                //MARK: - VStack Overlay for 0 Image Uploaded
                VStack(spacing: 10) {
                    Image(systemName: "photo.on.rectangle")
                        .font(.system(size: 60))
                        .foregroundColor(.gray.opacity(0.3))
                    Text("Please select image by tapping on plus icon")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                }
                .padding()
                //: - VStack Overlay for 0 Image Uploaded
            }//: - Else Statement
        }//: - VSTACK MAIN WRAPPER
    }//: - BODY CONTENT
}

struct PhotoPicker_Previews: PreviewProvider {
    static var previews: some View {
        PhotoPicker()
            .previewLayout(.sizeThatFits)
    }
}
