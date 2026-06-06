//
//  CombinationVHZStacks.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 21/05/26.
//

import SwiftUI

struct CombinationVHZStacks: View {

    var body: some View {

      ZStack(alignment: .top) {

        Rectangle()
          .fill(Color.yellow)
          .frame(width: 300, height: 400)

        VStack(alignment: .center, spacing: 10 ,content: {

          Rectangle()
            .fill(Color.green)
            .frame(width: 100, height: 100)

          Rectangle()
            .fill(Color.red)
            .frame(width: 75, height: 75)

          HStack(alignment: .center, spacing: 10 ,content:  {

            Rectangle()
              .fill(Color.blue)
            .frame(width: 50, height: 50)

            Rectangle()
              .fill(Color.purple)
            .frame(width: 75, height: 75)

            Rectangle()
              .fill(Color.gray)
            .frame(width: 90, height: 90)



          }).background(Color.orange)

        }).background(Color.black)
      }
    }
}

#Preview {
    CombinationVHZStacks()
}
