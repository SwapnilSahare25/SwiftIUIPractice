//
//  UseIgnoreSafeArea.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 27/05/26.
//

import SwiftUI

struct UseIgnoreSafeArea: View {
    var body: some View {

//      ZStack {  //background
//        
//
//        Color.blue
//         // .ignoresSafeArea(.all)
//
//        VStack { // foreground
//
//          Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//
//          Spacer()
//
//        }  .frame(maxWidth: .infinity,maxHeight: .infinity)
//          .background(Color.red)
//       // .ignoresSafeArea(.all)
//
//      }

      ScrollView {


        VStack {

          Text("This Goes Up")
            .font(.largeTitle)
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding(.leading)


          ForEach(0..<10) { index in

            RoundedRectangle(cornerRadius: 10)
              .fill(.white)
              .frame(height: 150)
              .shadow(radius: 10)
              .padding(20)

          }

        }

      }
      .background(Color.red)
     // .ignoresSafeArea(.all)
    }
}

#Preview {
    UseIgnoreSafeArea()
}
