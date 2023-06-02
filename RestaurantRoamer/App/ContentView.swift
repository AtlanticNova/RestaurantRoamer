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
                // MARK: Tab View
                TabView(selection: $tabSelection){
                    
                    // MARK: Home View
                    HomeView().tag(1)
                        .padding()
                    
                    // MARK: Navigation Stack
                    NavigationStack {
                        ZStack(alignment: .top) {
                            // MARK: Map View
                            RestaurantRoamerMapViewRepresentable()
                                .ignoresSafeArea()
                            
                            // MARK: Upper Button
                            HStack {
                                VStack{
                                    SearchButtonView()
                                    
//                                    RecenterButtonView()
                                }
                            }
                        }
                    }
                    .tag(2)
                    
                    // MARK: Review View
                    ReviewView().tag(3)
                        .padding()
                }
                VStack {
                    // MARK: Tab Component
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
