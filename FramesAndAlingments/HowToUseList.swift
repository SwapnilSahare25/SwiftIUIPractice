//
//  HowToUseList.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 30/05/26.
//

import SwiftUI

struct HowToUseList: View {

  @State var fruits: [String] = ["apple","banana","grapes","orange","pineapple"]

  @State var veggies: [String] = ["tomato","potato","brokli"]

    var body: some View {

      NavigationView(content: {
        List {

          // section 1
          Section {
            ForEach(fruits, id: \.self) { fruit in
              Text(fruit.capitalized)
            }

            .onDelete(perform: { indexSet in
                delete(indexSet: indexSet)
            })
            .onMove(perform: { indices, newOffset in
                move(indices: indices, newOffset: newOffset)
            })
            //.onMove(perform: move)


          } header: {
            Text("FRUITS")
          }


            // section 2
          Section {
            ForEach(veggies, id: \.self) { veggie in
              Text(veggie.capitalized)
            }
          } header: {
            Text("Veggies")
          }


        }
        .listStyle(SidebarListStyle())
        .navigationTitle("Grocery List")
        .toolbar {
          ToolbarItem(placement: .topBarLeading) {
            EditButton()

          }
          ToolbarItem(placement: .topBarTrailing) {
            Button("Add") {
              fruits.append("Coconut")
            }

          }
        }
      })


//        Text("Hello World!")
//        Text("Hello World!")
//        Text("Hello World!")
//        Text("Hello World!")
//        Text("Hello World!")




    }

  func delete(indexSet: IndexSet){
    fruits.remove(atOffsets: indexSet)
  }

  func move(indices: IndexSet, newOffset: Int){
    fruits.move(fromOffsets: indices, toOffset: newOffset)
  }
}

#Preview {

    HowToUseList()
}
