//
//  BindingStatePropertyWrapper.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 29/05/26.
//

import SwiftUI

struct BindingStatePropertyWrapper: View {

  @State var backgroundColor: Color = Color.green

  var body: some View {

    ZStack {

      backgroundColor
        .ignoresSafeArea()


      ButtonView(backgroundColor: $backgroundColor)


    }


    }
}

struct ButtonView: View {

  @Binding var backgroundColor: Color


  var body: some View {


    Button(action: {

      backgroundColor = Color.red

    }, label: {
      Text("Button")
        .foregroundStyle(.white)
        .font(.title)
        .fontWeight(.semibold)
        .padding()
        .padding(.horizontal)
        .background(Color.blue)
        .cornerRadius(10)
    })
  }
}

#Preview {
    BindingStatePropertyWrapper()
}
