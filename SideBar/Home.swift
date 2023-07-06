//
//  Home.swift
//  SideBar
//
//  Created by Bhumika Patel on 20/06/23.
//

import SwiftUI

struct Home: View {
    @Binding var selectedTab: String
//    init(selectedTab: Binding<String>) {
//        self._selectedTab = selectedTab
//        UITabBar.appearance().isHidden = true
//    }
    var body: some View {
        TabView(selection: $selectedTab){
            HomePage()
                .tag("Home")
                .tabItem{
                    Image(systemName: "house")
                }
            Setting()
                .tag("Setting")
                .tabItem{
                    Image(systemName: "gear")
                }
            Notification()
                .tag("Notification")
                .tabItem{
                    Image(systemName: "bell")
                }
            Help()
                .tag("Help")
                .tabItem{
                    Image(systemName: "questionmark.circle")
                }
        }
       
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
struct HomePage: View{
    var body: some View{
        NavigationView{
            GeometryReader { dimensions in
                List {
                    ForEach(0..<8) { _ in
                        AsyncImage(url: URL(string: "https://picsum.photos/600")) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(height: 240)
                        } placeholder: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(.gray.opacity(0.6))
                                    .frame(height: 240)
                                ProgressView()
                            }
                        }
                        .aspectRatio(3 / 2, contentMode: .fill)
                        .cornerRadius(12)
                        .padding(.vertical)
                        .shadow(radius: 4)
                    }
                    .listStyle(.inset)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                }
                
            }
        }
    }
}
struct Setting: View{
    var body: some View{
        NavigationView{
            Text("Setting")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .navigationTitle("Setting")
        }
    }
}
struct Notification: View{
    var body: some View{
        NavigationView{
            Text("Notification")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .navigationTitle("Notification")
        }
    }
}
struct Help: View{
    var body: some View{
        NavigationView{
            Text("Help")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .navigationTitle("Help")
        }
    }
}


