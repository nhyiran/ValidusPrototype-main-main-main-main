//
//  AboutPage.swift
//  ValidusPrototype
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct AboutPage: View {
    @Binding var name : String
    var body: some View {
        ZStack {
            Color("DarkBlue")
                .ignoresSafeArea()
                
            
            
            VStack{
                
                Text("About The Creators").font (Font.custom("Giaza", size: 40))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                  
                Spacer()
                    Text("Kaylee Co").font(Font.custom ("Cinzel-Medium", size: 25))
                    .font(.title)
                    .foregroundColor(Color("Gold"))
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 50.0)
                
                Text("Kaylee is a rising freshman in highschool. She has been playing soccer for about 6 years of her life. She can't wait to start playing more competitively in highschool.")
                    .font(.subheadline)
               
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(.bottom, 40.0)
                .frame(width: 350.0)
                
                Text("Isabella Zai").font(Font.custom ("Cinzel-Medium", size: 25))
                    .font(.title)
               
                .foregroundColor(Color("Gold"))
                .multilineTextAlignment(.leading)
                .padding(.bottom, 40.0)
                
                Text("Isabella is a rising freshman in highschool. She has been playing table tennis for 7 years. Isabella can't wait to continue learning how to code during highschool.")
                    .font(.subheadline)
                    .frame(width: 350.0)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(.bottom, 50.0)
                
                Text("Nhiyra Nkansah").font(Font.custom ("Cinzel-Medium", size: 25))
                    .font(.title)
                
                .foregroundColor(Color("Gold"))
                .multilineTextAlignment(.leading)
                .padding(.bottom, 40.0)
                
                Text("Nhyira is a rising College freshman, with plans to study Computer Science at Umass Lowell this fall. She has competed in the sport of Track and Field for eight years and hopes to continue her career in the sport throughout college.")
                    .font(.subheadline)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(.bottom, 50.0)
                .frame(width: 350.0)
                
            }
            .padding(.top)
        }
    }
}

struct AboutPage_Previews: PreviewProvider {
    static var previews: some View {
        AboutPage(name: .constant(""))
    }
}
