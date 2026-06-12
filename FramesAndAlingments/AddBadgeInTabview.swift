//
//  AddBadgeInTabview.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 12/06/26.
//

import SwiftUI

struct AddBadgeInTabview: View {


    var body: some View {

      List {


        Text("Hello")
          .badge(2)
        Text("Hello")
          .badge("New")
        Text("Hello")
        Text("Hello")
        Text("Hello")


      }


//      TabView {
//        Color.red
//          .tabItem {
//
//            VStack {
//              Image(systemName: "heart.fill")
//              Text("Heart")
//                .font(.headline)
//            }
//
//          }
//          .badge(10)
//
//
//        Color.green
//          .tabItem {
//
//            VStack {
//              Image(systemName: "house.fill")
//              Text("House")
//                .font(.headline)
//            }
//
//          }
//          .badge("New")
//
//
//        Color.blue
//
//          .tabItem {
//
//            VStack {
//              Image(systemName: "person.fill")
//              Text("Profile")
//                .font(.headline)
//            }
//
//          }
//
//      }

    }
  
}

#Preview {
    AddBadgeInTabview()
}
