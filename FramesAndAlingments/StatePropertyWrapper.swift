//
//  StatePropertyWrapper.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 27/05/26.
//

import SwiftUI

struct StatePropertyWrapper: View {


  @State var backgroundColor: Color = Color.brown
  @State var myTitle: String = "My Title"
  @State var count: Int = 0

    var body: some View {

      ZStack{

        backgroundColor
          .ignoresSafeArea(.all)

        VStack(spacing: 15, content: {

          Text(myTitle)
            .font(.title)

            Text("Count: \(count)")
            .font(.headline)
            .underline()


          HStack(spacing: 15) {

            Button("Button 1") {
              backgroundColor = .red
              myTitle = "Button 1 Pressed"
              count += 1
            }

            Button("Button 2") {
              backgroundColor = .green
              myTitle = "Button 2 Pressed"

              if count > 0 {
                count -= 1
              }else{
                print(count)
                return
              }


            }

          }



        })

      }

    }

}

#Preview {

    StatePropertyWrapper()

}
