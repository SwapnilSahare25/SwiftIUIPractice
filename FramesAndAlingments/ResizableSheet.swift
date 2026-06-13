//
//  ResizableSheet.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 13/06/26.
//

import SwiftUI

struct ResizableSheet: View {

  @State var showSheet: Bool = false
  @State var detents: PresentationDetent = .large

    var body: some View {

      Button("Click Me") {
        showSheet.toggle()
      }
      .sheet(isPresented: $showSheet, content: {
          MyNextSheetView()
         // .presentationDetents([.fraction(0.3)])
          .presentationDetents([.medium, .large], selection: $detents)
          .interactiveDismissDisabled()
      })

    }
}

struct MyNextSheetView: View {

  var body: some View {

    ZStack {

      Color.red.ignoresSafeArea()
      Text("Hello World")

    }


  }
}

#Preview {
    ResizableSheet()
}
