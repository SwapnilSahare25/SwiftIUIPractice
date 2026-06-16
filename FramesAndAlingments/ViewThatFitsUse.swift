//
//  ViewThatFitsUse.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 16/06/26.
//

import SwiftUI

struct ViewThatFitsUse: View {


    var body: some View {

      ZStack {

        Color.red.ignoresSafeArea()

        ViewThatFits {

          Text("This is some text that i would like to dislplay to te user!")
          Text("This is some text that i would like to dislplay")
          //Text("This is some text")
        }




      }
      .frame(height: 300)
      .padding(50)
      .font(.headline)


    }

}

#Preview {
    ViewThatFitsUse()
}
