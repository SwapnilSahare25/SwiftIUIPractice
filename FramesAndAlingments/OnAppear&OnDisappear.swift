//
//  OnAppear&OnDisappear.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 06/06/26.
//

import SwiftUI

struct OnAppear_OnDisappear: View {

  @State var myText: String = "This Text."

    var body: some View {


      NavigationStack {

        ScrollView {

          Text(myText)

        }
        .onAppear(perform: {
          DispatchQueue.main.asyncAfter(deadline: .now()+5) {
            myText = "This is my text."
          }
        })
        .onDisappear(perform: {
          myText = "Ending text."
        })
        .navigationTitle("OnAppear BootCamp")

      }

    }
}

#Preview {
    OnAppear_OnDisappear()
}
