//
//  LocationSearchView.swift
//  RestaurantRoamer
//
//  Created by Martinus Andika Novanawa on 24/05/23.
//

import SwiftUI
import MapKit

struct SearchButtonView: View {
    @State var presentSheet = false
    @State var selectedLocation: MKMapItem?
    
    var body: some View {
        ZStack {
            VStack {
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(8)
                            .background(
                                Color.orange,
                                in: RoundedRectangle(cornerRadius: 8)
                            )
                            .padding(.trailing)
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
            }
        }
    }
}

struct SearchButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SearchButtonView()
            .previewLayout(.sizeThatFits)
    }
}

// Textfield
// Implement model coredata
// How to get selected index
