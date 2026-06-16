//
//  ControlGroup.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 16/06/26.
//

import SwiftUI

struct ControlGroupUse: View {


    var body: some View {

      Menu("My Menu") {

        ControlGroup("One") {

          Button("Like") {

          }

          Button("Comment") {

          }

          Button("Share") {

          }
        }
        Button("Button 2") {

        }

        Button("Button 3") {

        }
      }

    }
}

#Preview {
    ControlGroupUse()
}
