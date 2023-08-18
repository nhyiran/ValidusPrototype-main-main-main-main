//
//  ContentView.swift
//  ResourcesPage
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct resourceFeature: View {
    @Binding var name : String
    var body: some View {
        NavigationStack {
            ZStack{
                Color("DarkBlue")
                    .ignoresSafeArea()
                    .navigationBarBackButtonHidden(true)
                VStack {
                    Text("Resources").font (Font.custom("Giaza", size: 40))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 190.0)
                    Spacer()
                    
                    // Replace "OpenAI's Website" with the text you want to display
                    VStack {
                        Text("Cleveland Clinic-                Athletes and Mental Health").font(Font.custom ("Cinzel-Medium", size: 25))
                            .font(.title)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .lineLimit(nil)
                            .padding()
                            .onTapGesture {
                                if let url = URL(string: "https://health.clevelandclinic.org/mental-health-in-athletes/") {
                                    UIApplication.shared.open(url)
                                    
                                }
                                
                            }
                            .background(Color("Gold"))
                            .cornerRadius(25)
                    }.padding()
                    
                    VStack {
                        Text("Just Womans Sports-      NCAA women athletes report more mental health concerns than male peers").font(Font.custom ("Cinzel-Medium", size: 25))
                            .font(.title)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .lineLimit(nil)
                            .onTapGesture {
                                if let url = URL(string: "https://justwomenssports.com/reads/ncaa-female-athletes-mental-health-concerns/") {
                                    UIApplication.shared.open(url)
                                    
                                }
                                
                            }
                            .background(Color("Gold"))
                            .cornerRadius(25)
                    }.padding()
                    
                    VStack {
                        Text("Strong Girls United Foundation").font(Font.custom ("Cinzel-Medium", size: 25))
                            .font(.title)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .lineLimit(nil)
                            .padding(.horizontal, 65.0)
                            .padding(.vertical, 22.0)
                            .onTapGesture {
                                if let url = URL(string: "https://www.sgunitedfoundation.org/?gclid=CjwKCAjwxOymBhAFEiwAnodBLAd67kP3-LMeh5LpibXpMtNWoYSB9tDyuxtZscysdxii3swJXAluYhoC1a0QAvD_BwE") {
                                    UIApplication.shared.open(url)
                                    
                                }
                                
                            }
                            .background(Color("Gold"))
                            .cornerRadius(25)
                    }.padding()
                    Spacer()
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
}
            struct resourceFeature_Previews: PreviewProvider {
                static var previews: some View {
                    resourceFeature(name: .constant(""))
                }
            }
            
        
