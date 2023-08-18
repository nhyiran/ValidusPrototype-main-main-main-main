//
//  workoutFeature.swift
//  ValidusPrototype
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct workoutFeature: View {
    
    @State private var textWorkout = ""
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    @Binding var name : String
    
    
    let workouts = ["Lunges", "Go for a run", "Burpees", "Goblet Squats", "Sit Ups", "Forearm Plank", "Wall sit", "Jumping Jacks","Side Plank", "Leg Raises", "15 Minute Yoga Session", "Russian Twists", "Push Ups"]
    
    var body: some View {
        ZStack {
            Color("DarkBlue")
                .ignoresSafeArea()
                .navigationBarBackButtonHidden(true)
            
            VStack {
                
                HStack {
                    Text("Exercise Log").font (Font.custom("Giaza", size: 50))
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
                    NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask, name: $name)
                }
                
                
                Text("Workout Generator").font (Font.custom("Giaza", size: 30))
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                
                Button("Generate") {
                    func pickWorkout() -> String {
                        let random = Int.random(in: 0..<12)
                        let workout = workouts[random]
                        
                        return workout
                        
                    }
                    
                    textWorkout = pickWorkout()
                    //print(randomWorkout)
                }
                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                .accentColor(/*@START_MENU_TOKEN@*/Color("Gold")/*@END_MENU_TOKEN@*/)
                Spacer()
                    .frame(height: 68.001)
                
                Text(textWorkout).font(Font.custom ("Cinzel-Medium", size: 35))
                    .font(.title)
                    .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height: 100)
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
            //In Iteration 2, add the deleteTask function here
            // func delete(at offsets: IndexSet) {
            //   toDoItems.remove(atOffsets: offsets)
        }
    }
}
            
        
    

                
                

struct workoutFeature_Previews: PreviewProvider {
                    static var previews: some View {
                        workoutFeature(name: .constant(""))
            }
}
