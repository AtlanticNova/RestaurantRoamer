//
//  BucketListCardComponent.swift
//  RestaurantRoamer
//
//  Created by Martinus Andika Novanawa on 24/05/23.
//

import SwiftUI

struct BucketListCardComponent: View {
    var body: some View {
        ZStack {
            HStack{
                Image("Garmin")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipped()
                VStack(alignment: .leading) {
                    Text("Restaurant Name")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
                        .font(.system(.body, design: .rounded))
                        .fontWeight(.bold)
                    Text("Restaurant Address")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
                        .font(.system(.caption, design: .rounded))
                    Text("800 m")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
                        .font(.system(.caption, design: .rounded))
                }
                .foregroundColor(.white)
                Spacer()
                
                Button{
                    
                } label: {
                    VStack {
                        Image(systemName: "trash.fill")
                            .font(.body)
                            .padding(8)
                            .foregroundColor(Color.white)
                            .background(Color.red,
                                        in: RoundedRectangle(cornerRadius: 8)
                            )
//                            .padding(.top, )
                    }
                }
            }
            .padding(8)
            .background(
                Color(hex: Constants.Color.primaryOrange),
                        in: RoundedRectangle(cornerRadius: 8)
            )
        }
        .frame(height: 80)
        .padding(.top)
    }
}

struct BucketListCardComponent_Previews: PreviewProvider {
    static var previews: some View {
        BucketListCardComponent()
            .previewLayout(.sizeThatFits)
    }
}
