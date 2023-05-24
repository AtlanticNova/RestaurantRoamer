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
                        RestaurantRoamerMapViewRepresentable()
                            .ignoresSafeArea()
                    }
                    .tag(2)
                    
                    ReviewView().tag(3)
                        .padding()
//                        .animation(.linear, value: 1)
                }
                if (tabSelection == 2){
                    ZStack {
                        Button {
                            tabSelection = 1
                        } label: {
                            VStack(alignment: .leading){
                                Image(systemName: "chevron.left.circle.fill")
                                    .foregroundColor(.orange)
                            }
                            .font(.largeTitle)
                            .frame(maxWidth: .infinity)
                        }
                        .position(CGPoint(x: 32, y: 24))
                    }
                } else {
                    VStack {
                        CustomTabComponent(tabSelection: $tabSelection)
                    }
                    .frame(maxHeight: .infinity, alignment: .bottom)

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
