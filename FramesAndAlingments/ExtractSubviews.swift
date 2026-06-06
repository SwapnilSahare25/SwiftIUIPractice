//
//  ExtractSubviews.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 29/05/26.
//

import SwiftUI

struct ExtractSubviews: View {


  var body: some View {

    ZStack {

      Color.blue
        .ignoresSafeArea()

      contentLayer


    }
  }

  var contentLayer: some View {


    HStack {
      ExtractedView(count: 2, name: "Apple", color: .red)
      ExtractedView(count: 5, name: "Banana", color: .green)
      ExtractedView(count: 7, name: "Apple", color: .orange)
      ExtractedView(count: 9, name: "Apple", color: .yellow)
    }

  }
}

#Preview {
    ExtractSubviews()
}

struct ExtractedView: View {

  let count: Int
  let name: String
  let color: Color

  var body: some View {

    VStack {
      
      Text("\(count)")
      Text("\(name)")

      
    }.padding()
      .background(color)
      .cornerRadius(10)
  }
}
