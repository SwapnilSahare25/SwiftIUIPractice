//
//  OnBoardingView.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 11/06/26.
//

import SwiftUI

struct OnBoardingView: View {


//Onboarding State:

  /*

   0 - Welcome Screen
   1 - Add name
   2 - Add age
   3 - Add gender

   */


  @State var onBoardingState: Int = 0

  @State var nameStr: String = ""
  @State var age: Double = 70

  @State var genderStr: String = ""
  let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))

  @State var alertTitle: String = ""
  @State var showAlert: Bool = false

  @AppStorage("name") var currentUsername: String?
  @AppStorage("age") var currentUserage: Int?
  @AppStorage("gender") var currentUsergender: String?
  @AppStorage("is_loggedin") var isCurrentUserLogin: Bool = false

    var body: some View {

      ZStack {

        //content
        ZStack {


          switch onBoardingState {

          case 0:
            welcomeSection
              .transition(transition)

          case 1:
            addNameSection
              .transition(transition)

          case 2:
            addAgeSection
              .transition(transition)

          case 3:
            addGenderSection
              .transition(transition)

          default:
            RoundedRectangle(cornerRadius: 25)
              .background(Color.purple)
          }
        }


        //buttons
        VStack {
          Spacer()
          bottomButton


        }
        .padding(30)
      }
      .alert(isPresented: $showAlert, content: {
        return Alert(title: Text(alertTitle))
      })

    }


}

#Preview {
    OnBoardingView()
    .background {
      Color.purple
    }
}

extension OnBoardingView {

  private var bottomButton: some View {

    Text(onBoardingState == 0 ? "SIGN UP" :
          onBoardingState == 3 ? "FINISH" : "NEXT"
    )
      .frame(height: 55)
      .frame(maxWidth: .infinity)
      .background(Color.white)
      .font(.headline)
      .foregroundStyle(.purple)
      .cornerRadius(10)
      .onTapGesture {
        handleNextButtonPressed()
      }

  }

  private var welcomeSection: some View {

    VStack(spacing: 40) {
      Spacer()

      Image(systemName: "heart.text.square.fill")
        .resizable()
        .scaledToFit()
        .frame(width: 200, height:  200)
        .foregroundStyle(.white)

      Text("Find your match.")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundStyle(.white)
        .overlay(alignment: .bottom) {
          Capsule(style: .continuous)
            .frame(height: 3)
            .offset(y: 5)
            .foregroundStyle(.white)
        }

      Text("This is #1 app for finding your match online! In this tutorial we are practicing using of appstorage and other swiftUI techniques.")
        .fontWeight(.medium)
        .foregroundStyle(.white)

      Spacer()
      Spacer()

    }
    .multilineTextAlignment(.center)
    .padding(30)

  }




  private var addNameSection: some View {

    VStack(spacing: 20) {

      Spacer()


      Text("What's your name?")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundStyle(.white)


      TextField("Enter your name here ...", text: $nameStr)
        .font(.headline)
        .frame(height: 55)
        .padding(.horizontal)
        .background(Color.white)
        .cornerRadius(10)


      Spacer()
      Spacer()

    }

    .padding(30)

  }


  private var addAgeSection: some View {

    VStack(spacing: 20) {

      Spacer()


      Text("What's your age?")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundStyle(.white)



      Text("\(String(format: "%.0f", age))")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundStyle(.white)

      Slider(value: $age, in: 18...100) {
          Text("")
      } minimumValueLabel: {
          Text("18")
          .foregroundStyle(.white)
      } maximumValueLabel: {
          Text("100")
          .foregroundStyle(.white)
      }
      .tint(.white)


      Spacer()
      Spacer()

    }

    .padding(30)

  }


  private var addGenderSection: some View {

    VStack(spacing: 20) {

      Spacer()

      Text("What's your gender?")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundStyle(.white)

      Picker(selection: $genderStr) {

        Text("Male").tag("Male")
        Text("Female").tag("Female")
        Text("Non-Binary").tag("Non-Binary")

      } label: {

//        Text("Select a gender")
//          .font(.headline)
//          .foregroundStyle(.purple)
//          .frame(height: 55)
//          .frame(maxWidth: .infinity)
//          .background(Color.white)
//          .cornerRadius(10)

      }
      .pickerStyle(.menu)
      .foregroundStyle(.purple)
      .frame(maxWidth: .infinity)
      .padding()
      .background(Color.white)
      .cornerRadius(10)
      Spacer()
      Spacer()

    }

    .padding(30)

  }

}



//Mark: Functions

extension OnBoardingView {

  func handleNextButtonPressed(){

    switch onBoardingState {

    case 1:
    
      if nameStr.isEmpty {
          showAlert(title: "Please enter name")
          return
      }

      if nameStr.count < 3 {
          showAlert(title: "Name must contain at least 3 characters")
          return
      }

    case 3:
      guard genderStr.count > 1 else {

       showAlert(title: "Please select gender")
        return
      }

    default:
      break

    }

    if onBoardingState == 3 {

      // finish sign in
      signIn()

    }else{

      withAnimation(.spring()) {
        onBoardingState += 1
      }
      
    }


  }

  func showAlert(title: String){
    alertTitle = title
    showAlert.toggle()

  }

  func signIn(){
    currentUsername = nameStr
    currentUserage = Int(age)
    currentUsergender = genderStr

    withAnimation(.spring()) {
      isCurrentUserLogin = true
    }

  }

}
