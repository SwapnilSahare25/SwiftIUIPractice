//
//  NavigationViewAndLink.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 30/05/26.
//

import SwiftUI

struct NavigationViewAndLink: View {


    var body: some View {


      NavigationView {

        ScrollView {

          NavigationLink("Hello, World!") {
            NextNavView()
          }


          Text("Hello, World!")
          Text("Hello, World!")
          Text("Hello, World!")
          Text("Hello, World!")
          Text("Hello, World!")
          Text("Hello, World!")

        }.navigationTitle("All Inboxes")
          .navigationBarTitleDisplayMode(.inline)
          .toolbar(.visible)
          .toolbar{
            ToolbarItem(placement: .topBarLeading) {

              HStack {
                NavigationLink {
                  NextNavView()
                } label: {
                  Image(systemName: "person.fill")
                }

                NavigationLink {
                  NextNavView()
                } label: {
                  Image(systemName: "flame.fill")
                }

              }

            }

            ToolbarItem(placement: .topBarTrailing) {

              HStack {
                Image(systemName: "xmark")
                Image(systemName: "heart.fill")
              }

            }
          }

      }




    }
}


struct NextNavView: View {

  @Environment (\.dismiss) var dismiss

  var body: some View {

    ZStack {

      Color.red.ignoresSafeArea()
        .toolbar(.hidden, for: .navigationBar)

      VStack{

        Button("Back") {
          dismiss.callAsFunction()
        }
      }

    }
  }
}

#Preview {
    NavigationViewAndLink()
}
