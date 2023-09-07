//
//  MainTabView.swift
//  scientificCalculator
//
//  Created by Devin Maleke on 05/09/23.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedIndex = 0
    var body: some View {
        TabView(selection: $selectedIndex){
            HomePageView()
                .onAppear(){
                    selectedIndex = 0
                }
                .tabItem{
                    VStack{
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                }.tag(0)
            
            MainCalculatorView()
                .onAppear(){
                    selectedIndex = 1
                }
                .tabItem{
                    Image(systemName: "plus.forwardslash.minus")
                    Text("Calculator")
                }.tag(1)
            
            NotesView()
                .onAppear(){
                    selectedIndex = 2
                }
                .tabItem{
                    Image(systemName: "books.vertical.fill")
                    Text("Notes")
                }.tag(2)
            
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView().preferredColorScheme(.dark)
    }
}
