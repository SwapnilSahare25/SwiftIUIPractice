//
//  AddButtons.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 27/05/26.
//

import SwiftUI

struct AddButtons: View {

  @State var title: String = "this is my title"

    var body: some View {

      VStack(spacing: 30) {

        Text(title)

        Button("Press Me!") {
          self.title = "Button 1 Clicked"
        }.tint(Color.red)

        Button(action: {
          self.title = "Button 2 Clicked"
        }, label: {
          Text("Save".uppercased())
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .padding()
            .padding(.horizontal, 20)
            .background(
              Color.blue
                .cornerRadius(10)
                .shadow(radius: 10)
            )
        })
        
        Button(action: {
          self.title = "Button 3 Clicked"
        }, label: {


          Circle()
            .fill(Color.white)
            .frame(width: 75, height: 75)
            .shadow(radius: 10)
            .overlay {
              Image(systemName: "heart.fill")
                .font(.largeTitle)
                .foregroundStyle(.red)
            }


        })

        Button(action: {
          self.title = "Button 4 Clicked"
        }, label: {


          Text("Finish".uppercased())
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundStyle(.gray)
            .padding()
            .padding(.horizontal, 10)
            .background(
              Capsule()
                .stroke(Color.gray, lineWidth: 5)
            )



        })



      }

    }

}

#Preview {
    AddButtons()
}
