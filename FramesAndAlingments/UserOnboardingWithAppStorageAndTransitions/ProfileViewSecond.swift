//
//  ProfileView.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 11/06/26.
//

import SwiftUI

struct ProfileViewSecond: View {

  @AppStorage("name") var currentUsername: String?
  @AppStorage("age") var currentUserage: Int?
  @AppStorage("gender") var currentUsergender: String?
  @AppStorage("is_loggedin") var isCurrentUserLogin: Bool = false

    var body: some View {

      VStack(spacing: 20) {

        Image(systemName: "person.circle.fill")
          .resizable()
          .scaledToFit()
          .frame(width: 150, height: 150)


        Text(currentUsername ?? "name")
        Text("\(currentUserage ?? 0)")
        Text(currentUsergender ?? "M")

        Text("SIGN OUT")
          .foregroundStyle(.white)
          .font(.headline)
          .frame(height: 55)
          .frame(maxWidth: .infinity)
          .background(Color.black)
          .cornerRadius(10)
          .onTapGesture {
            signOut()
          }

      }
      .font(.title)
      .foregroundStyle(.purple)
      .padding()
      .padding(.vertical, 40)
      .background(Color.white)
      .cornerRadius(10)
      .shadow(radius: 10)

    }

  func signOut(){

    currentUsername = nil
    currentUserage = nil
    currentUsergender = nil
    withAnimation(.spring()) {
      isCurrentUserLogin = false
    }
  }
}

#Preview {
  ProfileViewSecond()
}
