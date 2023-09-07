//
//  HomePageView.swift
//  scientificCalculator
//
//  Created by Devin Maleke on 05/09/23.
//

import SwiftUI

struct HomePageView: View {
    
    private let frameDemension: CGFloat = (UIScreen.main.bounds.width / 2.2)
    
    var body: some View {
        NavigationStack {
            ScrollView (.vertical){
                VStack (alignment: .leading){
                    VStack(alignment:.leading,spacing: 0){
                        Text("See your recent work & your formula")
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                        
                        //recent Calculation
                        
                        
                        Button{
                            print("Your recent calculation")
                        }label: {
                            VStack{
                                Spacer()
                                HStack (alignment: .lastTextBaseline){
                                    Text("Your Recent Calculation")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: 150)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "clock.arrow.circlepath")
                                        .imageScale(.large)
                                        .padding()
                                    
                                    
                                }
                                .padding(.bottom,3)
                                
                            }
                            .frame(height: 104)
                            .background(Color(red: 0.15, green: 0.15, blue: 0.15))
                            .cornerRadius(10)
                            .padding()
                            
                        }
                        
                        
                        HStack{
                            //recently saved
                            Button{
                                print("Recently Saved")
                            }label: {
                                VStack{
                                    Spacer()
                                    HStack (alignment: .lastTextBaseline){
                                        Text("Recently Saved")
                                            .font(.title2)
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.leading)
                                        
                                        
                                        Spacer()
                                        
                                        Image(systemName: "tray.and.arrow.down")
                                            .imageScale(.large)
                                        
                                    }.padding(.horizontal)
                                        .padding(.bottom,10)
                                    
                                    
                                }
                                .frame(height: 80)
                                .background(Color(red: 0.15, green: 0.15, blue: 0.15))
                                .cornerRadius(10)
                            }
                                
                                
                                
                                
                                
                                //create new
                                Button{
                                    print("Create New")
                                }label: {
                                    VStack{
                                        Spacer()
                                        HStack (alignment: .lastTextBaseline){
                                            Text("Create New")
                                                .font(.title2)
                                                .foregroundColor(.white)
                                                .multilineTextAlignment(.leading)
                                            
                                            
                                            Spacer()
                                            
                                            Image(systemName: "plus.circle")
                                                .imageScale(.large)
                                            
                                        }.padding(.horizontal)
                                            .padding(.bottom,10)
                                        
                                        
                                    }
                                    .frame(height: 80)
                                    .background(Color(red: 0.15, green: 0.15, blue: 0.15))
                                    .cornerRadius(10)
                                }
                                
                            }.padding(.horizontal)
                        }
                    
                    
                    
                    
                    Text("Formula's Reccomendation")
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                        .padding(.top,5)
                    
                    ScrollView(.horizontal){
                        LazyHStack{
                            ForEach(0...5, id: \.self) { item in
                                ReccomendCard()
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Text("What's new")
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal){
                        LazyHStack{
                            ForEach(0...5, id: \.self) { item in
                                ReccomendCard()
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    
                    
                }
            }
            .navigationTitle("Your Progress")
            .navigationBarTitleDisplayMode(.automatic)
            
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
