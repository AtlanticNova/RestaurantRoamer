//
//  RecenterButtonView.swift
//  RestaurantRoamer
//
//  Created by Martinus Andika Novanawa on 25/05/23.
//

import SwiftUI

struct RecenterButtonView: View {
    var body: some View {
        ZStack {
            VStack {
                Button {
//                    RestaurantRoamerMapViewRepresentable.recenterMap(RestaurantRoamerMapViewRepresentable())
                } label: {
                    VStack {
                        Image(systemName: "location.fill")
                            .font(.largeTitle)
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

struct RecenterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RecenterButtonView()
            .previewLayout(.sizeThatFits)
    }
}
