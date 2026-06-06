//
//  PopOverSheetAnimationTransition.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 29/05/26.
//


//sheets
//animation
//transition

import SwiftUI

struct PopOverSheetAnimationTransition: View {

  @State var showSheet: Bool = false

    var body: some View {

      ZStack {

        Color.green
          .ignoresSafeArea()


        VStack {


          Button(action: {


            withAnimation(.spring()) {
              showSheet.toggle()
            }



          }, label: {
            Text("Button")
              .foregroundStyle(.white)
              .padding()
              .padding(.horizontal)
              .background(Color.blue)
              .cornerRadius(10)


        })

          Spacer()
        }

//        .fullScreenCover(isPresented:  $showSheet, content: {
//          SecondSheet()
//        })

        // Method 1. Sheet
//        .sheet(isPresented: $showSheet, content: {
//          SecondSheet()
//        })


        // Method 2. Transition
//        ZStack {
//
//          if showSheet {
//            SecondNewSheet(newScreen: $showSheet)
//              .padding(.top, 100)
//              .transition(.move(edge: .bottom))
//              //.animation(.spring(), value: showSheet)
//          }
//        }.zIndex(5.0)


        // Method 3. Animation Offset

        SecondNewSheet(newScreen: $showSheet)
          .padding(.top, 100)
          .offset(y: showSheet ? 0 : UIScreen.main.bounds.height)




      }



    }
}

struct SecondNewSheet: View {


  @Binding var newScreen: Bool

  var body: some View {


    ZStack(alignment: .topTrailing){

      Color.red
        .ignoresSafeArea()


      Button(action: {

        newScreen.toggle()

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
    PopOverSheetAnimationTransition()
}
