//
//  UseGroup.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 13/06/26.
//

import SwiftUI

struct UseGroup: View {

    var body: some View {


      VStack(spacing: 40) {

        Text("Hello, World!")

        Group {
          Text("Hello, World!")

          Text("Hello, World!")
        }
        .foregroundStyle(.red)
        .background(Color.green)



      }
      .padding()
      .padding(.leading)
      .padding(.trailing)
      .foregroundStyle(.black)
      .background(Color.blue)




    }
}

#Preview {
    UseGroup()
}
