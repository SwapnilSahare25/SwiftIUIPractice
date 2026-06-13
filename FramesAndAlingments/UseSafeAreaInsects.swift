//
//  UseSafeAreaInsects.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 13/06/26.
//

import SwiftUI

struct UseSafeAreaInsects: View {


    var body: some View {

      NavigationStack {

        List(0..<10) { _ in

          RoundedRectangle(cornerRadius: 10)
            .frame(height: 350)

        }
        .navigationTitle("Safe Area Insects")
        // add something at bottom
//        .overlay(
//
//          Text("HI")
//            .frame(maxWidth: .infinity)
//            .background(Color.yellow)
//
//          ,alignment: .bottom
//        )

        //best practice to add something at bottom
        .safeAreaInset(edge: .bottom,alignment: .center) {

          // Like hovour View

          Text("HI")
            .frame(maxWidth: .infinity)
            .background(Color.yellow)
        }
      }

//        Text("Hello, World!")
    }
}

#Preview {
    UseSafeAreaInsects()
}
