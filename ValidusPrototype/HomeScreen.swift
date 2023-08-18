//
//  HomeScreen.swift
//  ValidusPrototype
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct HomeScreen: View {
    @Binding var name : String
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("DarkBlue")
                    .ignoresSafeArea()
                    .navigationBarBackButtonHidden(true)
                
                VStack {
                    Text("Welcome, \(name)!").font(Font.custom ("Cinzel-Medium", size: 18))
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                        .padding(.top, 14.0)
                    Spacer()
                        .frame(height: 4.0)
                    
                    Text("Validus").font (Font.custom("Giaza", size: 80))
                        .font(.system(size: 70))
                        .fontWeight(.black)
                        .foregroundColor(Color.white)
                    Spacer()
                        .frame(height: 200.0)
                    Image("ValidusLogo")
                        .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: 0.1)
                    Spacer()
                    
                    
                        
                    
                    
                }
            }.toolbar{
                
                ToolbarItemGroup(placement: .status) {
                    HStack {
                        NavigationLink(destination: journalFeauture(name: $name)) {
                        Image("journal")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)

                            
                            
                            
                    }
                        
                        NavigationLink(destination: workoutFeature(name: $name)) {
                            Image("workouts")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)

                                
                                
                                
                        }
                        
                        NavigationLink(destination: HomeScreen(name: $name)) {
                            Image("home")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                
                                

                                
                                
                                
                        }
                        
                        
                        NavigationLink(destination: resourceFeature(name: $name)) {
                            Image("resource")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)

                                
                                
                                
                        }
                        
                        NavigationLink(destination: settingFeature(name: $name)) {
                            Image("settings")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)

                                
                                
                                
                        }
                    }
                    

                
                }
                
                
            }
        }
    }
}
struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(name: .constant(""))
    }
}


