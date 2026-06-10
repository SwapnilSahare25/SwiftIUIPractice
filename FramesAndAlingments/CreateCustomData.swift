//
//  CreateCustomData.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 10/06/26.
//

import SwiftUI

struct UserModel: Identifiable {

  let id: String
  let displayName: String
  let userName: String
  let follower: String
  let isVerified: Bool
}

struct CreateCustomData: View {

  //@State var nameArray: [String] = ["Swapnil", "Suraj","Samir","Shubham","Sagar","Soham"]

  @State var userArray: [UserModel] = [

    UserModel(id: "100", displayName: "Swapnil", userName: "swapnil@123", follower: "100", isVerified: false),
    UserModel(id: "21", displayName: "Suraj", userName: "suraj24", follower: "50", isVerified: true),
    UserModel(id: "102", displayName: "Samir", userName: "sam12", follower: "45", isVerified: true),
    UserModel(id: "103", displayName: "Shubham", userName: "shu@121", follower: "25", isVerified: false),
    UserModel(id: "104", displayName: "Sagar", userName: "sagar897@", follower: "23", isVerified: true),

  ]


    var body: some View {

      NavigationStack {

        List {

          ForEach(userArray) { userObj in

            HStack(spacing: 15.0) {

              Circle()
                .frame(width: 35, height: 35)

              VStack(alignment: .leading) {
                Text(userObj.displayName)
                  .font(.headline)
                Text("@\(userObj.userName)")
                  .font(.caption)
                  .foregroundStyle(.gray)
              }

              Spacer()

              if userObj.isVerified {

                Image(systemName: "checkmark.seal.fill")
                  .foregroundStyle(.blue)
              }

              VStack {
                Text(userObj.follower)
                  .font(.headline)
                Text("Followers")
                  .font(.caption)
                  .foregroundStyle(.gray)

              }


            }
            .padding(.vertical, 10)
          }

//          ForEach(userArray, id: \.self) { userObj in
//
//            HStack(spacing: 15.0) {
//
//              Circle()
//                .frame(width: 35, height: 35)
//
//              Text(userObj.displayName)
//
//            }
//            .padding(.vertical, 10)
//
//          }

        }
        .navigationTitle("Users")

      }


    }

}

#Preview {
    CreateCustomData()
}
