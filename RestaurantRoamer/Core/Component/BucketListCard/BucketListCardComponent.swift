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
            HStack {
//                Image
                Image("")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .background(
                        Text("Image")
                        .foregroundColor(.gray)
                    )
                    .clipped()
                
//                Text
                VStack(alignment: .leading) {
                    Text("Restaurant Name")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 2, trailing: 0))
                        .font(.system(.body, design: .rounded))
                        .fontWeight(.bold)
                    Text("Restaurant Address")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 6, trailing: 0))
                        .font(.system(.caption, design: .rounded))
                        .foregroundColor(Color.gray)
                    Text("800 m")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
                        .font(.system(.caption, design: .rounded))
                        .foregroundColor(Color.gray)
                }
                .foregroundColor(.black)
                Spacer()
                
//                Trash Button
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
                    }
                }
            }
            .padding(8)
            .overlay(
//                Border
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.orange, lineWidth: 2)
            )
            .background(
//                Shape White
                Color(.white),
                in: RoundedRectangle(cornerRadius: 8)
            )
        }
        .frame(height: 80)
        .padding(.horizontal, 3)
        .padding(.vertical, 8)
    }
}

struct BucketListCardComponent_Previews: PreviewProvider {
    static var previews: some View {
        BucketListCardComponent()
            .previewLayout(.sizeThatFits)
    }
}
