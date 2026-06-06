//
//  ZStacks.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 21/05/26.
//

import SwiftUI

struct ZStacks: View {
    var body: some View {
      
      ZStack{

        Rectangle()
          .fill(Color.blue)
          .frame(width: 200, height: 200)

        Rectangle()
          .fill(Color.green)
          .frame(width: 150, height: 150)


        Rectangle()
          .fill(Color.red)
          .frame(width: 100, height: 100)

      }

      


    }

}

#Preview {
    ZStacks()
}
