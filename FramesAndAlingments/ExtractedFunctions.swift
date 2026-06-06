//
//  ExtractedFunctions.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 27/05/26.
//

import SwiftUI

struct ExtractedFunctions: View {

  @State var backgroundColor : Color = Color.pink
  @State var isSelected : Bool = false

    var body: some View {

      ZStack {

        backgroundColor
          .ignoresSafeArea()

        self.contentLayer




      }


    }

  var contentLayer: some View {

    VStack(spacing: 15) {

      Text("Title")
        .font(.largeTitle)

      Button(action: {
        self.buttonPressed()

      }, label: {
        Text("PRESS ME")
          .font(.headline)
          .foregroundStyle(.white)
          .fontWeight(.semibold)
          .padding()
          .background(Color.black)
          .cornerRadius(10)
      })

    }
  }

  func buttonPressed(){
    self.isSelected = !self.isSelected
    self.backgroundColor = self.isSelected ? .yellow : .pink
  }
}

#Preview {
    ExtractedFunctions()
}
