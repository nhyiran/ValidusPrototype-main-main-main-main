//
//  settingFeature.swift
//  ValidusPrototype
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct settingFeature: View {
    @Binding var name : String
    var body: some View {
        NavigationStack {
            ZStack{
                Color("DarkBlue")
                    .ignoresSafeArea()
                    .navigationBarBackButtonHidden(true)
                VStack{
                    Text("Settings").font (Font.custom("Giaza", size: 50))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 190.0)
                    Spacer()
                    
                    NavigationLink(destination: AboutPage(name: $name)) {
                        Text("Personal Info").font(Font.custom ("Cinzel-Medium", size: 25))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 48.0)
                     
                            
//                           
                       
                    }
                    .padding(.all, 20.0)
                    .background(Color("Gold"))
                    .cornerRadius(20)
                    Spacer()
                       
                    
                    NavigationLink(destination: AboutPage(name: $name)) {
                        Text("About The Creators").font(Font.custom ("Cinzel-Medium", size: 25))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
    //
                       
                    }
                    .padding(.all, 20.0)
                    .background(Color("Gold"))
                    .cornerRadius(20)
                    Spacer()
                        
                    
                    
                    NavigationLink(destination: AboutPage(name: $name)) {
                        Text("Notifications").font(Font.custom ("Cinzel-Medium", size: 25))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 50.0)
                            
//
                       
                    }
                    .padding(.all, 20.0)
                    .background(Color("Gold"))
                    .cornerRadius(20)
                    Spacer()
                    
                }
               
                    
                
            }.toolbar {
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

    

            struct settingFeature_Previews: PreviewProvider {
                static var previews: some View {
                    settingFeature(name: .constant(""))
                }
            }
