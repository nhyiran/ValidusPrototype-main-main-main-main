//
//  ContentView.swift
//  ValidusPrototype
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                    Color("DarkBlue")
                        .ignoresSafeArea()
                        .navigationBarBackButtonHidden(true)
                VStack {
                    Spacer()
                    Text("VALIDUS").font (Font.custom("Giaza", size: 80))
//                        .fontWeight(.heavy)
                        .foregroundColor(Color("Gold"))
                        
                    TextField("Enter name here...", text: $name)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .padding()
                        .background(Color(.white))
                        .cornerRadius(30)
                        .padding()
                    
                        NavigationLink(destination: HomeScreen(name: $name)) {
                            Text("Next")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                
                        }
                        .padding(.all)
                    
                    
                    Spacer ()
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
