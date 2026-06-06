//
//  UseColorPicker.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 05/06/26.
//

import SwiftUI

struct UseColorPicker: View {

  @State var backgroundColor: Color = .green

    var body: some View {


      ZStack {

        backgroundColor.ignoresSafeArea()

        ColorPicker(selection: $backgroundColor, supportsOpacity: true, label: {

          Text("Select color")

        })
        .padding()
        .background(Color.black)
        .foregroundStyle(.white)
        .cornerRadius(10)
      .font(.headline)
      .padding(50)

      }


    }
}

#Preview {
    UseColorPicker()
}
