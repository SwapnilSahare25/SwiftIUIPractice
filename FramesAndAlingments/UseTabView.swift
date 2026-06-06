//
//  UseTabView.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 06/06/26.
//

import SwiftUI

struct UseTabView: View {

  @State var selectedTab: Int = 1


    var body: some View {


      TabView {
        RoundedRectangle(cornerRadius: 25)
        RoundedRectangle(cornerRadius: 25)
        RoundedRectangle(cornerRadius: 25)
        RoundedRectangle(cornerRadius: 25)
      }
      .frame(height: 300)
      .tabViewStyle(.page)



//      TabView(selection: $selectedTab) {
//
//        HomeView()
//          .tag(0)
//
//
//        BrowseView()
//          .tag(1)
//
//        ProfileView()
//          .tag(2)
//
//      }
//      .tint(Color.red)

    }
}

#Preview {
    UseTabView()
}

struct HomeView: View {

  var body: some View {

    ZStack {
      Color.red.ignoresSafeArea(.container, edges: .top)
      Text("Home Tab")
        .font(.largeTitle)
        .fontWeight(.semibold)
    }
    .tabItem {
      Image(systemName: "house.fill")
      Text("Home")
    }

  }

}

struct BrowseView: View {
  var body: some View {
    ZStack {
      Color.green.ignoresSafeArea(.container, edges: .top)
      Text("Browse Tab")
        .font(.largeTitle)
        .fontWeight(.semibold)
    }
    
    .tabItem {
      Image(systemName: "globe")
      Text("Browse")
    }
  }
}

struct ProfileView: View {
  var body: some View {
    ZStack{
      Color.orange.ignoresSafeArea(.container, edges: .top)
      Text("Profile Tab")
        .font(.largeTitle)
        .fontWeight(.semibold)
    }
    .tabItem {
      Image(systemName: "person.fill")
      Text("Profile")
    }
  }
}
