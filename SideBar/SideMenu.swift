//
//  SideMenu.swift
//  SideBar
//
//  Created by Bhumika Patel on 20/06/23.
//

import SwiftUI

struct SideMenu: View {
    @Binding var selectedTab : String
    @Namespace var animation
    var body: some View {
        VStack(alignment: .leading, spacing: 15, content: {
            Image("p1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                .padding(.top,50)
            VStack(alignment: .leading,spacing: 6, content: {
                Text("Name")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                Button(action: {}, label: {
                    Text("View Profile")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.7)
                })
            })
            VStack(alignment: .leading,spacing:0){
                TabButton(image: "house", title: "Home", animation: animation, selectedTab: $selectedTab)
                TabButton(image: "gear", title: "Setting", animation: animation, selectedTab: $selectedTab)
                TabButton(image: "bell", title: "Notification", animation: animation, selectedTab: $selectedTab)
                TabButton(image: "questionmark.circle", title: "Help", animation: animation, selectedTab: $selectedTab)
            }
            .padding(.leading,-15)
            .padding(.top,50)
        })
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
