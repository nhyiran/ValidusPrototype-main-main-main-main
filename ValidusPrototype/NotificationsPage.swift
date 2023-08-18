//
//  NotificationsPage.swift
//  ValidusPrototype
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct NotificationsPage: View {
    var body: some View {
        ZStack {
            Color("DarkBlue")
                .ignoresSafeArea()
            Text("Notifications")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.leading)
              
            Spacer()
        }
    }
}

struct NotificationsPage_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsPage()
    }
}
