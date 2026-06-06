//
//  Transition.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 29/05/26.
//

import SwiftUI

struct Transition: View {

  @State var isShow: Bool = false

    var body: some View {


      ZStack(alignment: .bottom, content: {

        VStack {

          Button("Button") {
            withAnimation(.easeInOut){
              isShow.toggle()
            }

          }
          Spacer()

        }


        if isShow {

          RoundedRectangle(cornerRadius: 20)
            .frame(height: UIScreen.main.bounds.height*0.5)
//            .transition(.blurReplace)
            //.transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .top)))
            .transition(.asymmetric(insertion: .move(edge: .leading), removal: AnyTransition.identity.animation(.easeInOut)))
            //.animation(.easeInOut, value: isShow)

        }



      }).ignoresSafeArea(edges: .bottom)

      
    }
}

#Preview {
    Transition()
}
