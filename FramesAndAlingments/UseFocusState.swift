//
//  UseFocusState.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 12/06/26.
//

import SwiftUI

// it is a property wrapper

struct UseFocusState: View {


  @FocusState var userNameFocuse: Bool
  @State var userName: String = ""


    var body: some View {

      VStack {
        TextField("type your name...", text: $userName)
          .focused($userNameFocuse)
          .frame(height: 50)
          .frame(maxWidth: .infinity)
          .padding(.leading)
          .background(Color.gray.opacity(0.3))
          .cornerRadius(10)


        Button("Toggle Focus Here") {
          userNameFocuse.toggle()
        }
      }
      .padding()
      .onAppear(perform: {
        DispatchQueue.main.asyncAfter(deadline: .now()+5.0) {
          self.userNameFocuse = true
        }
      })


    }
}

#Preview {
    UseFocusState()
}
