//
//  EnvironmentObjectsUse.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 10/06/26.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {

  @Published var dataArray: [String] = []


  init(){

    getData()

  }

  func getData(){

    dataArray.append("iPhone")
    dataArray.append("iPad")
    dataArray.append("iMac")
    dataArray.append("Apple Watch")
    dataArray.append("Apple Earphones")
  }

}


struct EnvironmentObjectsUse: View {

  @StateObject var envViewModel: EnvironmentViewModel = EnvironmentViewModel()

    var body: some View {

      NavigationStack {

        List{

          ForEach(envViewModel.dataArray, id: \.self) { data in

            NavigationLink {
              DetailView(selectedItem: data)
            } label: {
              Text(data)
            }


          }

        }
        .navigationTitle("Random")
      }
      .environmentObject(envViewModel)


       // Text("Hello, World!")
    }
}

struct DetailView: View {

  let selectedItem: String

  var body: some View {

    ZStack {

      //background
      Color.green.ignoresSafeArea()

      //foreground

      NavigationLink {

        FinalView()

      } label: {

        Text(selectedItem)
          .font(.headline)
          .foregroundStyle(.green)
          .padding()
          .padding(.horizontal)
          .background(Color.white)
          .cornerRadius(15)

      }

    }
  }
}

struct FinalView: View {

  @EnvironmentObject var envirViewModel: EnvironmentViewModel

  var body: some View {

    ZStack {



      //background
      LinearGradient(gradient: Gradient(colors: [Color.blue, Color.orange]),
                     startPoint: .topLeading,
                     endPoint: .bottomTrailing)

      .ignoresSafeArea()


      //foreground

      ScrollView {

        VStack(spacing: 20) {


          ForEach(envirViewModel.dataArray, id: \.self) { item in

            Text(item)
            
          }

        }
        .foregroundStyle(.white)
        .font(.largeTitle)

      }


    }

  }
}

#Preview {
  EnvironmentObjectsUse()

}
