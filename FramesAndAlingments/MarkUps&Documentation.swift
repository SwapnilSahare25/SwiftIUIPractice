//
//  MarkUps&Documentation.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 06/06/26.
//

import SwiftUI

struct MarkUps_Documentation: View {

  // Mark: Properties


  @State var dataArray: [String] = ["Apple", "Orange", "Banana"]

  @State var showAlart: Bool = false

  // Mark: Body

    var body: some View {


      NavigationStack { // Start: Nav

        ZStack {
          Color.red.ignoresSafeArea()
          //background


          foregroundLayer

          .navigationTitle( "Documention")
          .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
              Button(action: {
                showAlart.toggle()

              }, label: {
                Text("Alert")
              })
            }
          }
          .alert("This is alert", isPresented: $showAlart) {

        }
        }

      } // End: Nav


    }


  private var foregroundLayer: some View {

    
    ScrollView {
      //foreground

      VStack(spacing: 10) {

        Text("Hello")

        ForEach(dataArray, id: \.self) { data in
          Text(data)
        }

      }

    }
  }
}

#Preview {
    MarkUps_Documentation()
}
