//
//  UseAnyLayout.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 13/06/26.
//

import SwiftUI

//Layout Protocol

struct UseAnyLayout: View {

  @Environment (\.horizontalSizeClass) private var horizontalSizeClass

  @Environment (\.verticalSizeClass) private var verticalSizeClass

    var body: some View {

      VStack(spacing: 12){


        Text("Horizontal: \(horizontalSizeClass.debugDescription)")

        Text("Vertical: \(verticalSizeClass.debugDescription)")

        let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())

        layout {

          Text("Alpha")

          Text("Beta")

          Text("Gamma")
        }

//        if horizontalSizeClass == .compact{
//          VStack {
//
//            Text("Alpha")
//
//            Text("Beta")
//
//            Text("Gamma")
//          }
//        }else{
//
//          HStack {
//
//            Text("Alpha")
//
//            Text("Beta")
//
//            Text("Gamma")
//          }
//        }



      }



    }
}

#Preview {
    UseAnyLayout()
}
