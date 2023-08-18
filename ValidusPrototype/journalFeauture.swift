//
//  journalFeauture.swift
//  ValidusPrototype
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct journalFeauture: View {
    @State private var showNewTask = false
    @Binding var name : String
    @State var toDoItems: [ToDoItem] = []
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("DarkBlue")
                    .ignoresSafeArea()
                    .navigationBarBackButtonHidden(true)
                VStack {
                    
                    HStack {
                        Text("Goals").font (Font.custom("Giaza", size: 80))
                            .fontWeight(.bold)
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        
                        Spacer()
                        Button(action:{
                            self.showNewTask = true})
                        {
                            Text("+")
                                .font(.largeTitle)
                                .fontWeight(.light)
                                .foregroundColor(Color("Gold"))
                            
                        }
                    }
                    .padding()
                    
                    List {
                        ForEach (toDoItems) { toDoItem in
                            if toDoItem.isImportant == true {
                                Text("‼️" + toDoItem.title)
                            } else {
                                Text(toDoItem.title)
                            }
                            
                            
                        }
                        .onDelete {
                            (indexSet) in self.toDoItems.remove(atOffsets: indexSet)
                        }
                        .listRowBackground(Color("DarkBlue"))
                        
                        if(toDoItems.isEmpty){
                            Text("").listRowBackground(Color.clear)
                        }
                    }
                    .listStyle(.plain)
                    if showNewTask {
                        NewToDoVieww(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask, name: $name)
                    }
                    
                    
                }
                .toolbar {
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



struct journalFeauture_Previews: PreviewProvider {
    static var previews: some View {
        journalFeauture(name: .constant(""))
    }
}
