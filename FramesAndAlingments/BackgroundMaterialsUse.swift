//
//  BackgroundMaterialsUse.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 12/06/26.
//

import SwiftUI

struct BackgroundMaterialsUse: View {


    var body: some View {

      VStack {
        Spacer()

        VStack {

          RoundedRectangle(cornerRadius: 4)
            .frame(width: 30, height: 4)
            .padding()
          Spacer()

        }
        .frame(height: 350)
        .frame(maxWidth: .infinity)
       // .background(Color.black.opacity(0.4))
        .background(.thinMaterial)
        .cornerRadius(30)

      }
      .ignoresSafeArea()
      .background(
        Image("likedSongs")
      )

    }
}

#Preview {
    BackgroundMaterialsUse()
}
