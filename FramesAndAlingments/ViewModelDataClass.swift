//
//  ViewModelDataClass.swift
//  FramesAndAlingments
//
//  Created by Swapnil on 10/06/26.



//@Observable Objects

//@State Objects

import SwiftUI

struct FruitModel: Identifiable {

  let id: String = UUID().uuidString
  let name: String
  let count: Int


}

class FruitViewModel: ObservableObject {

  @Published var fruitArray: [FruitModel] = []
  @Published var isLoading: Bool = false

  init(){
    self.getFruits()
  }

  func getFruits(){


    //guard fruitArray.isEmpty else { return }

    let fruit1 = FruitModel(name: "PineApple", count: 3)
    let fruit2 = FruitModel(name: "Banana", count: 7)
    let fruit3 = FruitModel(name: "Watermelon", count: 9)

    isLoading = true

    DispatchQueue.main.asyncAfter(deadline: .now()+3.0) {
      self.fruitArray.append(fruit1)
      self.fruitArray.append(fruit2)
      self.fruitArray.append(fruit3)

      self.isLoading = false
    }



  }

  func deleteFruit(index: IndexSet){

    fruitArray.remove(atOffsets: index)

  }


}


struct ViewModelDataClass: View {

//  @State var fruitArray: [FruitModel] = [
//
//   // FruitModel(name: "Apple", count: 5)
//
//  ]

  //@StateObject use this on creation / init

  //@ObservableObject use this for subviews

  @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()

    var body: some View {

      NavigationStack {

        List {

          if fruitViewModel.isLoading {
            ProgressView()
          }else{
            ForEach(fruitViewModel.fruitArray) { fruitObj in

              HStack {

                Text("\(fruitObj.count)")
                  .foregroundStyle(.red)

                Text(fruitObj.name)
                  .font(.headline)
                  .bold()

              }

            }// Loop End here
            .onDelete(perform: { indexSet in
              //self.deleteFruit(index: indexSet)
              fruitViewModel.deleteFruit(index: indexSet)

            })
          }

        } //List end
        .listStyle(.grouped)
        .navigationTitle("Fruits")
        .toolbar(content: {
          ToolbarItem(placement: .topBarTrailing) {
            NavigationLink {
              RandomScreen(fruitModel: fruitViewModel)
            } label: {
              Image(systemName: "arrow.right")
                .font(.headline)
            }

          }
        })
//        .onAppear {
//          //self.getFruits()
//          fruitViewModel.getFruits()
//        }



      } //NavigationStack end


    }

//  func getFruits(){
//
//    let fruit1 = FruitModel(name: "PineApple", count: 3)
//    let fruit2 = FruitModel(name: "Banana", count: 7)
//    let fruit3 = FruitModel(name: "Watermelon", count: 9)
//
//    fruitArray.append(fruit1)
//    fruitArray.append(fruit2)
//    fruitArray.append(fruit3)
//
//  }
//
//  func deleteFruit(index: IndexSet){
//
//    fruitArray.remove(atOffsets: index)
//
//  }
}

struct RandomScreen: View {

  @Environment (\.dismiss) var dismiss

  @ObservedObject var fruitModel: FruitViewModel


  var body: some View {

    ZStack {

      Color.green.ignoresSafeArea()

      Button(action: {
        dismiss.callAsFunction()
        //print(fruitModel.fruitArray.count)



      }, label: {
        Text("Go Back")
          .foregroundStyle(.white)
          .font(.largeTitle)
          .fontWeight(.semibold)
      })
    }

  }

}

#Preview {
    ViewModelDataClass()
  //RandomScreen()
}
