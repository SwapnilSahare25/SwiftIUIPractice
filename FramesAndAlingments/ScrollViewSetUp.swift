//
//  ScrollView.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 23/05/26.
//

import SwiftUI

struct ScrollViewSetUp: View {


    var body: some View {

//      ScrollView{
//
//        VStack {
//
//          ForEach(0..<30) { index in
//
//            Rectangle()
//              .fill(Color.blue)
//              .frame(height: 300)
//
//          }

          ScrollView(.horizontal,showsIndicators: true, content: {

            HStack {

              ForEach(0..<30) { index in

                Rectangle()
                  .fill(Color.blue)
                  .frame(width: 200,height: 200)

              }
            }

          }).padding(.leading,15)
            .padding(.trailing,15)



    }
}

#Preview {
    ScrollViewSetUp()
}
