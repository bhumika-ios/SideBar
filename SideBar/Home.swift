//
//  Home.swift
//  SideBar
//
//  Created by Bhumika Patel on 20/06/23.
//

import SwiftUI

struct Home: View {
    @Binding var selectedTab: String
    var body: some View {
        TabView(selection: $selectedTab){
            HomePage()
                .tag("Home")
            Setting()
                .tag("Setting")
            Notification()
                .tag("Notification")
            Help()
                .tag("Help")
        }
    }
}

//struct Home_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//    }
//}
struct HomePage: View{
    var body: some View{
        NavigationView{
            Text("Home")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .navigationTitle("Home")
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


