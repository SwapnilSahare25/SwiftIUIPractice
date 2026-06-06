//
//  SheetAndFullScreenCover.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 29/05/26.
//

import SwiftUI

struct SheetAndFullScreenCover: View {


  @State var showSheet: Bool = false

    var body: some View {

      ZStack {

        Color.green
          .ignoresSafeArea()


        Button(action: {


          showSheet.toggle()


        }, label: {
          Text("Button")
            .foregroundStyle(.white)
            .padding()
            .padding(.horizontal)
            .background(Color.blue)
            .cornerRadius(10)


        }).fullScreenCover(isPresented:  $showSheet, content: {
          SecondSheet()
        })

//        .sheet(isPresented: $showSheet, content: {
//          SecondSheet()
//        })


      }



    }

}

struct SecondSheet: View {


  @Environment(\.dismiss) var dismiss

  var body: some View {


    ZStack(alignment: .topTrailing){

      Color.red
        .ignoresSafeArea()


      Button(action: {

        dismiss()

      }, label: {
        Image(systemName: "xmark")
          .foregroundStyle(.white)
          .padding(20)
          .font(.largeTitle)


      })


    }
  }
}

#Preview {
  //SecondSheet()
    SheetAndFullScreenCover()
}
