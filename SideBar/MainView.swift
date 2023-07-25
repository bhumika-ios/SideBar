//
//  MainView.swift
//  SideBar
//
//  Created by Bhumika Patel on 20/06/23.
//

import SwiftUI

struct MainView: View {
    @State var selectedTab = "Home"
    @State var show = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Purple")
                    .edgesIgnoringSafeArea(.all)
                
             
                        SideMenu(selectedTab: $selectedTab)
                       
                                
                
                ZStack {
                    Color.white
                        .opacity(0.5)
                        .cornerRadius(show ? 15 : 0)
                        .shadow(color: Color.black.opacity(0.07), radius: 5, x: -5, y: 0)
                        .offset(x: show ? -25 : 0)
                        .padding(.vertical, 20)
                    
                    // Wrap the Home view in a VStack to allow tapping outside the content
                    VStack {
                        if selectedTab == "Home" {
                            HomePage()
                        } else if selectedTab == "Setting" {
                            Setting()
                        } else if selectedTab == "Notification" {
                            Notification()
                        } else if selectedTab == "Help" {
                            Help()
                        }
                    }
                    .cornerRadius(show ? 15 : 0)
                }
                .scaleEffect(show ? 0.84 : 1)
                .offset(x: show ? getRect().width - 220 : 0)
                .ignoresSafeArea()
                
                .overlay(
                    Button(action: {
                        withAnimation(.spring()){
                            show.toggle()
                        }
                    }, label: {
                        VStack(spacing: 5) {
                            Capsule()
                                .fill(show ? Color.white : Color.primary)
                                .frame(width: 30, height: 3)
                                .rotationEffect(.init(degrees: show ? -50 : 0))
                                .offset(x: show ? 2 : 0, y: show ? 9 : 0)
                            VStack(spacing: 5) {
                                Capsule()
                                    .fill(show ? Color.white : Color.primary)
                                    .frame(width: 30, height: 3)
                                Capsule()
                                    .fill(show ? Color.white : Color.primary)
                                    .frame(width: 30, height: 3)
                                    .offset(y: show ? -8 : 0)
                            }
                            .rotationEffect(.init(degrees: show ? 50 : 0))
                        }
                    })
                    .offset(y: -8)
                    .padding(),
                    alignment: .topLeading
                )
            }
            .onChange(of: selectedTab) { _ in
                            // Hide the side menu when a tab is selected
                            withAnimation {
                                show = false
                            }
                        }
        }
    }
}

// The rest of the code remains the same

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}
