//
//  HomeView.swift
//  RestaurantRoamer
//
//  Created by Martinus Andika Novanawa on 24/05/23.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelection = 1
    
    var body: some View {
        NavigationView() {
            ZStack {
                TabView(selection: $tabSelection){
                    HomeView().tag(1)
                        .padding()
                    
                    NavigationStack {
                        ZStack(alignment: .top) {
                            RestaurantRoamerMapViewRepresentable()
                                .ignoresSafeArea()
                            
                            HStack {
                                VStack{
                                    SearchButtonView()
                                    
//                                    RecenterButtonView()
                                }
                            }
                        }
                    }
                    .tag(2)
                    
                    ReviewView().tag(3)
                        .padding()
                }
                VStack {
                    CustomTabComponent(tabSelection: $tabSelection)
                }
                .frame(maxHeight: .infinity, alignment: .bottom)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
