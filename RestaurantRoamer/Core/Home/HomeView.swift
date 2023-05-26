//
//  HomeView.swift
//  RestaurantRoamer
//
//  Created by Martinus Andika Novanawa on 24/05/23.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        // MARK: Bucket List
        VStack (alignment: .leading) {
            HStack(alignment: .bottom) {
                Image(systemName: "basket.fill")
                    .foregroundColor(Color(hex: Constants.Color.primaryOrange))

                Text("Bucketlist")
                    .foregroundColor(.black)
            }
            .font(.system(.title, design: .rounded))
            .fontWeight(.heavy)
            
            // MARK: Bucket List Card
            ScrollView {
                VStack() {
//                    ForEach(<#T##Data#>, content: <#T##(Data.Element) -> Content#>)
                    BucketListCardComponent()
                    BucketListCardComponent()
                    BucketListCardComponent()
                    BucketListCardComponent()
                    BucketListCardComponent()
                    BucketListCardComponent()
                    BucketListCardComponent()
                    BucketListCardComponent()
                    BucketListCardComponent()
                    BucketListCardComponent()
                }
                .padding(.bottom, 30)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
