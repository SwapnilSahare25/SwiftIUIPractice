//
//  VStack.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 21/05/26.
//

import SwiftUI

struct VStacks: View {
    var body: some View {
//      VStack {
//
//        Rectangle()
//          .fill(Color.blue)
//          .frame(width: 100, height: 100)
//
//        Rectangle()
//          .fill(Color.blue)
//          .frame(width: 150, height: 150)
//
//
//        Rectangle()
//          .fill(Color.blue)
//          .frame(width: 200, height: 200)
//
//
//      }

      VStack(alignment: .center, spacing: 20, content: {

        Rectangle()
          .fill(Color.blue)
          .frame(width: 100, height: 100)

        Rectangle()
          .fill(Color.green)
          .frame(width: 150, height: 150)


        Rectangle()
          .fill(Color.red)
          .frame(width: 200, height: 200)
      })









    }
}

#Preview {
    VStacks()
}
