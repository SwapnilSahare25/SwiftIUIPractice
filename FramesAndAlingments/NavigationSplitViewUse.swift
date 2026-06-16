//
//  NavigationSplitViewUse.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 16/06/26.
//

import SwiftUI

// Navigation SplitView primary use for iPad Apps
// Minor use for macOS and probability use for VisionOS

enum FoodType: String, CaseIterable {

  case fruits, vegetables, meat

}

enum Fruit: String, CaseIterable {

  case apple, banana, orange

}

struct NavigationSplitViewUse: View {

  @State var visibility:NavigationSplitViewVisibility = .all
  @State var selectedCategory: FoodType? = nil
  @State var selectedFruit: Fruit? = nil

    var body: some View {

//      NavigationSplitView {
//
//        Color.red
//
//      } detail: {
//
//        Color.blue
//
//      }

//      NavigationSplitView {
//        Color.red
//      } content: {
//        Color.green
//      } detail: {
//        Color.blue
//      }


      NavigationSplitView(columnVisibility: $visibility) {
       // Color.red

        // For iPhones
        List(FoodType.allCases, id: \.rawValue, selection: $selectedCategory) { category in

          NavigationLink(category.rawValue.capitalized, value: category)


//            Button(category.rawValue.capitalized) {
//              selectedCategory = category
//            }
//            Text(category.rawValue.capitalized)


        }

        // For iPad
//        List {
//          ForEach(FoodType.allCases, id: \.rawValue) { category in
//
//            Button(category.rawValue.capitalized) {
//              selectedCategory = category
//            }

//
//          }
//        }
        .navigationTitle("Categories")
      } content: {
        if let selectedCategory {
          Group {
            
            switch selectedCategory {
            case .fruits:

              List(Fruit.allCases, id: \.rawValue, selection: $selectedFruit) { fruit in

                NavigationLink(fruit.rawValue.capitalized, value: fruit)

              }

//              List {
//                ForEach(Fruit.allCases, id: \.rawValue) { fruit in
//
//                  NavigationLink(fruit.rawValue.capitalized, value: fruit)
//
////                  Button(fruit.rawValue.capitalized) {
////                    selectedFruit = fruit
////                  }
//                }
//
//              }
            case .vegetables:
              EmptyView()
            case .meat:
              EmptyView()
            }
          }
          .navigationTitle(selectedCategory.rawValue.capitalized)

        }
        //Color.green
      } detail: {

        if let selectedFruit {

          Text("You selected: \(selectedFruit.rawValue)")
            .font(.largeTitle)
            .navigationTitle(selectedFruit.rawValue.capitalized)
        }
      }
      .navigationSplitViewStyle(.balanced)

    }
}

#Preview {
    NavigationSplitViewUse()
}
