//
//  AsyncImage.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 12/06/26.
//

import SwiftUI

/*

/// No image is loaded.
case empty

/// An image succesfully loaded.
case success(Image)

/// An image failed to load with an error.
case failure(Error)

*/

struct UseAsyncImage: View {

  let url = URL(string: "https://picsum.photos/200")

    var body: some View {


       //AsyncImage(url: url)
//
//      AsyncImage(url: url) { returnedImage in
//
//        returnedImage
//          .resizable()
//          .scaledToFit()
//          .frame(width: 200, height: 200)
//
//      } placeholder: {
//        ProgressView()
//      }

      AsyncImage(url: url) { phase in
        //Text("Hi")
        switch phase {
        case .empty:
          ProgressView()
        case .success(let image):
          image
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
        case .failure(let error):
          Text(error.localizedDescription)

        }
      }



    }
}

#Preview {
    UseAsyncImage()
}
