//
//  HomeView.swift
//  FitnessApp
//
//  Created by CarX Connected Car on 24/12/24.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active : Int = 52
    @State var stand : Int = 8
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                Text("Wel Come")
                    .font(.largeTitle)
                    .padding()
                
                HStack{
                    Spacer()
                    VStack {
                        VStack(alignment: .leading, spacing: 8){
                            Text("Calories")
                                .font(.callout)
                                .foregroundColor(.red)
                            Text("123 kcal")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8){
                            Text("Active")
                                .font(.callout)
                                .foregroundColor(.green)
                            Text("52 mins")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8){
                            Text("Stand")
                                .font(.callout)
                                .foregroundColor(.blue)
                            Text("8 hours")
                                .bold()
                        }
                        .padding(.bottom)
                    }
                    Spacer()
                    ZStack{
                        ProgressCircleView(progress: $calories,goal:600,color:Color.red)
                        
                        ProgressCircleView(progress: $active,goal:60,color:Color.green)
                            .padding(.all,20)
                        
                        ProgressCircleView(progress: $stand,goal:12,color:Color.blue)
                            .padding(.all,40)
                    }
                    .padding(.horizontal)
                    Spacer()
                }
                .padding()
            }
            
        }
    }
}

#Preview {
    HomeView()
}
