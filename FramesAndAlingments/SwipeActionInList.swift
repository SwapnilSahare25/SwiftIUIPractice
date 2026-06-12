//
//  SwipeActionInList.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 12/06/26.
//

import SwiftUI

struct SwipeActionInList: View {

  @State var fruits: [String] = ["apple","banana","grapes","orange","pineapple"]

    var body: some View {

      List {

        ForEach(fruits, id: \.self) { fruit in
          Text(fruit)
            .swipeActions(edge: .trailing, allowsFullSwipe: false) {
              Button("Archive") {

              }
              .tint(Color.blue)
              Button("Save") {

              }
              .tint(Color.red)
              Button("Delete") {

              }
              .tint(Color.orange)
            }

            .swipeActions(edge: .leading, allowsFullSwipe: true) {
              Button("Share") {

              }
              .tint(Color.green)
            }
        }
//        .onDelete(perform: { indexSet in
//          deleteFruit(index: indexSet)
//        })
      }

    }

  func deleteFruit(index: IndexSet){

    fruits.remove(atOffsets: index)
  }
}

#Preview {
    SwipeActionInList()
}
