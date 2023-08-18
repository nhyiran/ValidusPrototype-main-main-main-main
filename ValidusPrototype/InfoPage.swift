//
//  InfoPage.swift
//  ValidusPrototype
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct InfoPage: View {
    var body: some View {
        ZStack {
            Color("DarkBlue")
                .ignoresSafeArea()
            Text("Personal Info")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.leading)
              
            Spacer()
        }
    }
}

struct InfoPage_Previews: PreviewProvider {
    static var previews: some View {
        InfoPage()
    }
}
