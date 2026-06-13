//
//  NavigationStack.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 13/06/26.
//

import SwiftUI

struct NavigationStackUse: View {

  @State var fruitArray: [String] = ["Apple","Banana","Watermelon","Grapes"]

  @State var pathStack: [String] = []


    var body: some View {

      NavigationStack(path: $pathStack) {  //is use for perticular data type only other will not work


//      NavigationStack { //is use for all data type only,other will work

        ScrollView {

          VStack(spacing: 40) {

            Button("Super Segue") {
              pathStack.append(contentsOf: [   // push to multiple screen at the same time
                "Coconut","Mango","Lichi"
              ])
            }

            ForEach(fruitArray, id: \.self) { fruit in
              NavigationLink(value: fruit) {
                Text("Click Me: \(fruit)")
              }
            }

            ForEach(0..<11) { x in

              NavigationLink(value: x) {
                Text("Click Me: \(x)")
              }

            }

          }
        }
        .navigationTitle("Navigation Use")
        .navigationDestination(for: Int.self) { value in
          MySecondScreen(value: value)
        }

        .navigationDestination(for: String.self) { value in
          Text("AnotherScreen : \(value)")
        }
      }


    }
}

struct MySecondScreen: View {

  let value: Int

  init(value: Int) {
    self.value = value
    print("Screen Number : \(value)")
  }

  var body: some View {

    Text("Screen Value: \(value)")
  }
}

#Preview {
    NavigationStackUse()
}
