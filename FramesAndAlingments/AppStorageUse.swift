//
//  AppStorageUse.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 11/06/26.
//

import SwiftUI

struct AppStorageUse: View {

  //@State var currentUser: String?

  @AppStorage("userName") var currentUser: String?


    var body: some View {

      VStack(spacing: 20) {

        Text(currentUser ?? "Please add name")


        if let name = currentUser{
          Text(name)
        }

        Button("Save") {

          let name = "Swapnil"
          currentUser = name

        //  UserDefaults.standard.setValue(name, forKey: "userName")
        }

      }
//      .onAppear(perform: {
//        currentUser = UserDefaults.standard.string(forKey: "userName")
//      })


    }
}

#Preview {
    AppStorageUse()
}
