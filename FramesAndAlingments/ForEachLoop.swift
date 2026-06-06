//
//  ForEachLoop.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 23/05/26.
//

import SwiftUI

struct ForEachLoop: View {


  
    var body: some View {
      VStack {

        ForEach(0..<10){ index in

          HStack {
            Circle()
              .foregroundColor(.red)
              .frame(width: 30, height: 30)
              //.background(Color.red)

            Text("Index is : \(index)")
          }

        }

      }
    }
}

#Preview {
    ForEachLoop()
}
