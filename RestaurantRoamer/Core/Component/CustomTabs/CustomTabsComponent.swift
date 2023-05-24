//
//  CustomTabsComponent.swift
//  RestaurantRoamer
//
//  Created by Martinus Andika Novanawa on 24/05/23.
//

import SwiftUI

struct CustomTabComponent: View {
    @Binding var tabSelection: Int
    @Namespace private var animationNamespace
    
    let tabBarItems: [( image: String, title: String )] = [
        ("house", "Home"),
        ("map", "Map"),
        ("star", "Review")
    ]
    var body: some View {
        ZStack {
            // MARK: Rounded Rectangle
            Rectangle()
                .ignoresSafeArea()
                .frame(height: 80)
                .foregroundColor(Color(hex: Constants.Color.brokenWhite))
                .shadow(radius: 2)
            
            // MARK: Navigation Button
            HStack {
                ForEach(0..<3) { index in
                    Button {
                        tabSelection = index + 1
                    } label: {
                        VStack(spacing: 8) {
                            
                            if index + 1 == tabSelection {
                                RoundedRectangle(cornerRadius: 2)
                                    .frame(height: 8)
                                    .foregroundColor(.orange)
                                    .matchedGeometryEffect(id: "SelectedTabId", in: animationNamespace)
//                                    .offset(y: 3)
                            } else {
                                RoundedRectangle(cornerRadius: 2)
                                    .frame(height: 8)
                                    .foregroundColor(.clear)
//                                    .offset(y: 3)
                            }
                            
                            Image(systemName: tabBarItems[index].image)
                                .font(.custom("", size: 20))
                        
                            Text(tabBarItems[index].title)
                                .fontWeight(.medium)
                            
                            Spacer()
                        }
                        .foregroundColor(index + 1 == tabSelection ? .orange : .gray)
                    }
                }
            }
            .frame(height: 80)
//            .clipShape(RoundedRectangle(cornerRadius: 24))
        }
    }
}

struct CustomTabComponent_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabComponent(tabSelection: .constant(1))
            .previewLayout(.sizeThatFits)
            .padding(.vertical)
    }
}
