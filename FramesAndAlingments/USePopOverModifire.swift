//
//  USePopOverModifire.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 13/06/26.
//

import SwiftUI

struct USePopOverModifire: View {

  @State var showPopOver: Bool = false


    var body: some View {


      ZStack {

        Color.green
          .ignoresSafeArea()

        Button("Click Me") {

          showPopOver.toggle()

        }
        .popover(isPresented: $showPopOver, attachmentAnchor: .point(.bottomTrailing), content: {

          //can use scrollview, can show lists can use for loop
                    Text("Next")
                      .presentationCompactAdaptation(.popover)
        })
//        .popover(isPresented: $showPopOver, content: {
//
//          Text("Next")
//            .presentationCompactAdaptation(.popover)
//        })





      }
    }
}

#Preview {
    USePopOverModifire()
}
