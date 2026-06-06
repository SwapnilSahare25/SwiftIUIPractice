//
//  DarkMode.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 06/06/26.
//

import SwiftUI

struct DarkMode: View {

  @Environment (\.colorScheme)  var colorScheme


    var body: some View {


      NavigationStack{

        ScrollView {

          VStack(spacing: 20){

            Text("This is primary color")
              .foregroundStyle(.primary)

            Text("This is secondary color")
              .foregroundStyle(.secondary)


            Text("This is black color")
              .foregroundStyle(.black)


            Text("This is white color")
              .foregroundStyle(.white)

            Text("This is globle color")
              .foregroundStyle(Color("AdaptiveColor", bundle: nil))


            Text("This is locally adaptive color")
              .foregroundStyle(colorScheme == .light ? .green : .red)


            

          }
        }
        .navigationTitle("Dark Mode")
      }


    }
}

#Preview {

  Group{
   // DarkMode()
    //.preferredColorScheme(.light)

    DarkMode()
    .preferredColorScheme(.light)

  }
//    DarkMode()
//    .preferredColorScheme(.light)
}
