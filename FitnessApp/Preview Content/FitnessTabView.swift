//
//  FitnessTabView.swift
//  FitnessApp
//
//  Created by CarX Connected Car on 24/12/24.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedtab = "Home"
    
    init(){
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .green
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.green]
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    var body: some View {
        TabView(selection: $selectedtab){
            HomeView()
                .tag("Home")
                .tabItem{
                    Image(systemName:"house")
                    Text("Home")
                }
            
            HistoricDataView()
                .tag("Historic")
                .tabItem{
                    Image(systemName:"chart.line.uptrend.xyaxis")
                    Text("Charts")
                }
        }
    }
}

#Preview {
    FitnessTabView()
}
