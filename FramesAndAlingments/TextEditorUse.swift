//
//  TextEditorUse.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 05/06/26.
//

import SwiftUI

struct TextEditorUse: View {

  @State var textEditorStr: String = "This is a starting text "

    var body: some View {


      NavigationStack {

        VStack {

          TextEditor(text: $textEditorStr)
            .frame(height: 250)

          Button(action: {

          }, label: {

            Text("Save".uppercased())
              .padding()
              .font(.headline)
              .frame(maxWidth: .infinity)
              .background(Color.blue.cornerRadius(10))
              .foregroundStyle(.white)


          })
          Spacer()

        }
        .padding()
        .background(Color.green)
        .navigationTitle("TextEditor")

        //Spacer()
      }


    }
}

#Preview {
    TextEditorUse()
}
