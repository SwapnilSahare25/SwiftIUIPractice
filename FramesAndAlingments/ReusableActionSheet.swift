//
//  ReusableActionSheet.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 04/06/26.
//

import SwiftUI

struct ReusableActionSheet: View {

  @State var showAction: Bool = false

    var body: some View {


      Button("Click Here") {
        showAction.toggle()
      }
      .confirmationDialog("Dialog"
                          , isPresented: $showAction, titleVisibility: .visible) {

        Button("Delete", role: .destructive) {
              // print("Delete")
           }
      }message: {
        Text("Select one of the actions below.")
          .font(.headline)
          .fontWeight(.semibold)
          .foregroundStyle(.black)
      }


    }
}

#Preview {
    ReusableActionSheet()
}
