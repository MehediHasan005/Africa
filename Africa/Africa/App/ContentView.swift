//
//  ContentView.swift
//  Africa
//
//  Created by Mehedi Hasan on 25/11/22.
//

import SwiftUI

struct ContentView: View {
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    @State private var isGridViewActive:Bool = false
    let heptic = UIImpactFeedbackGenerator(style: .medium)
    //let gridLayout:[GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
    @State private var gridLayout:[GridItem] = [GridItem(.flexible())]
    @State private var gridColumn : Int = 1
    @State private var toolbarIcon:String = "square.grid.2x2"
    
    func gridSwiach() {
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        
        switch gridColumn {
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x2"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default:
            toolbarIcon = "square.grid.2x2"
        }
    }
    var body: some View {
        NavigationView {
            Group {
                if !isGridViewActive {
                    List {
                        CoverImageView()
                            .frame(height:300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        ForEach(animals) { animal in
                            NavigationLink(destination: AnimalDetailsView(animal: animal)) {
                                AnimalListItemView(animal: animal)
                            }
                        }
                    }
                }else {
                    ScrollView(.vertical , showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center,spacing: 10){
                            ForEach(animals) { item in
                                NavigationLink(destination: AnimalDetailsView(animal: item)) {
                                    AnimalGridItemView(animal: item)
                                    
                                }
                            }
                        }
                        .padding()
                        .animation(.easeIn)
                    }
                }
            }
            .navigationBarTitle("Africa" , displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 12) {
                        Button {
                            isGridViewActive = false
                            heptic.impactOccurred()
                        }label: {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                        }
                        Button{
                            isGridViewActive = true
                            heptic.impactOccurred()
                            gridSwiach()
                        }label: {
                            Image(systemName: toolbarIcon )
                                .font(.title2)
                                .foregroundColor(isGridViewActive ?  .accentColor : .primary )
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
