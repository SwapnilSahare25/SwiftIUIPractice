//
//  UseAlert.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 30/05/26.
//

import SwiftUI

struct UseAlert: View {

  @State var showAlert: Bool = false


    var body: some View {


      Button("Click Here") {
        showAlert.toggle()
      }
      .alert(isPresented: $showAlert, content: {

        getAlert()

      })

      
    }

  func getAlert() -> Alert {


    return  Alert(title: Text("Log In"), message: Text("Are you sure you want to log out ?"), primaryButton: .destructive(Text("Delete")), secondaryButton: .cancel())

  }
}

#Preview {
    UseAlert()
}
