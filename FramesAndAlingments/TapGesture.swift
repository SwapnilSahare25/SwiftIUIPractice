//
//  TapGesture.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 06/06/26.
//

import SwiftUI

struct TapGestureUse: View {


  @State var changeColor: Bool = false
    var body: some View {

      VStack(spacing: 20){

        RoundedRectangle(cornerRadius: 20)
          .frame(height: 250)
          .foregroundStyle(changeColor ? .green : .red)


        Button(action: {
          changeColor.toggle()

        }, label: {
          Text("Save")
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .foregroundStyle(.white)
            .background(Color.blue)
            .cornerRadius(10)

        })

        Text("Gesture")
          .frame(height: 55)
          .frame(maxWidth: .infinity)
          .foregroundStyle(.white)
          .background(Color.blue)
          .cornerRadius(10)
//          .onTapGesture {
//            changeColor.toggle()
//          }
          .onTapGesture(count: 2, perform: {
          changeColor.toggle()
        })


        Spacer()


      }
      .padding()


    }
}

#Preview {
  TapGestureUse()
}
