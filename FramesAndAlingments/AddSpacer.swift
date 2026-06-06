//
//  Spacer.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 22/05/26.
//

import SwiftUI

struct AddSpacer: View {
    var body: some View {
      HStack(spacing: 0, content: {

//        Spacer(minLength: 0)
//
//          .frame(height: 10)
//          .background(Color.orange)

        Rectangle()
          .fill(Color.blue)
          .frame(width: 50, height: 50)

        Spacer()
          .frame(height: 10)
          .background(Color.orange)

        Rectangle()
          .fill(Color.green)
          .frame(width: 50, height: 50)

        Spacer()
          .frame(height: 10)
          .background(Color.orange)

        Rectangle()
          .fill(Color.red)
          .frame(width: 50, height: 50)

        Spacer()
          .frame(height: 10)
          .background(Color.orange)

      }).background(Color.gray)
        .padding(.horizontal,50)
        .background(Color.yellow)






    }
}

#Preview {
    AddSpacer()
}
