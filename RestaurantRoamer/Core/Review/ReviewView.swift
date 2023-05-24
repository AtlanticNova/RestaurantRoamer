//
//  ReviewView.swift
//  RestaurantRoamer
//
//  Created by Martinus Andika Novanawa on 24/05/23.
//

import SwiftUI

struct ReviewView: View {
    var body: some View {
        // MARK: Review
        VStack (alignment: .leading) {
            HStack(alignment: .bottom) {
                Image(systemName: "star.fill")
                    .foregroundColor(Color(hex: Constants.Color.primaryOrange))
                    .cornerRadius(8)
                Text("Review")
                    .foregroundColor(.black)
            }
            .font(.system(.title, design: .rounded))
            .fontWeight(.heavy)
            
            // MARK: Review Card
            ScrollView {
                VStack() {
                    ReviewListCardComponent()
                    ReviewListCardComponent()
                    ReviewListCardComponent()
                    ReviewListCardComponent()
                    ReviewListCardComponent()
                    ReviewListCardComponent()
                    ReviewListCardComponent()
                    ReviewListCardComponent()
                    ReviewListCardComponent()
                    ReviewListCardComponent()
                }
                .padding(.bottom, 60)
            }

        }
    }
}

struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
