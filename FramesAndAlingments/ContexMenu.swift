//
//  ContexMenu.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 04/06/26.
//

import SwiftUI

struct ContexMenu: View {


    var body: some View {


      VStack(alignment: .leading, spacing: 10.0) {

        Image(systemName: "house.fill")
          .font(.title)

        Text("Swiftfull Thinking")
          .font(.headline)

        Text("How to use context menu")
          .font(.subheadline)

      }
      .foregroundStyle(.white)
      .padding(30)
      .background(Color.blue.cornerRadius(20))

      .contextMenu(ContextMenu(menuItems: {
        Text("Menu Item 1")
        Text("Menu Item 2")
        Text("Menu Item 3")
      }))


    }

}

#Preview {
    ContexMenu()
}
