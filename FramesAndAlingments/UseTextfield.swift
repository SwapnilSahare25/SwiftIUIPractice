//
//  UseTextfield.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 05/06/26.
//

import SwiftUI

struct UseTextfield: View {

  @State var titleStr: String = ""
  @State var dataArray: [String] = []


    var body: some View {

      NavigationStack{


        VStack {


          TextField("Type here", text: $titleStr)
           // .textFieldStyle(.roundedBorder)
            .font(.headline)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(.red)
          .background(Color.gray.opacity(0.3).cornerRadius(10))



          Button(action: {
              saveText()


          }, label: {
            Text("Save".uppercased())
              .padding()
              .frame(maxWidth: .infinity)
              .font(.headline)
              .foregroundStyle(.white)
              .background(Color.blue.cornerRadius(10))
          })


        }.padding()
          .navigationTitle("TextField")

        ForEach(dataArray, id: \.self) { data in

          Text(data)

        }

        Spacer()


      }



    }

  func saveText(){
    if !titleStr.isEmpty{
      dataArray.append(titleStr)
      titleStr = ""
    }


  }
}

#Preview {
    UseTextfield()
}
