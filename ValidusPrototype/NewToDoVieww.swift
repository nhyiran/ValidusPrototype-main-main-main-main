//
//  NewToDoView.swift
//  workoutFeature
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct NewToDoVieww: View {
    
    
    //In Iteration 2, add @Environment here
    
    @State var title: String
    @State var isImportant: Bool
    @Binding var toDoItems: [ToDoItem]
    @Binding var showNewTask : Bool
    @Binding var name : String
    //Bind the ToDoItems array here
    //Delete the ToDoItems array binding in iteration 2
    
    //Bind the showNewTask property here
    
    var body: some View {
        ZStack {
            Color("DarkBlue")
                .ignoresSafeArea()
            
            VStack {
                Text("Goal Title").font (Font.custom("Giaza", size: 50))
                
                    
                    .foregroundColor(Color.white)
                //Add Text View containing "Task title" here
                
                //Add TextField here with the Text "Enter task description" and binded to the title state property (text: $title)
                
                TextField("Enter the description", text: $title).background(.white)
                    
                
                
                //.frame(height: 45.0)
                    .border(/*@START_MENU_TOKEN@*/Color("Gold")/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                    .padding()
                    
                
                //Add Toggle here that is binded to isImportant (isOn: $isImportant) and the text "Is it important?"
                Toggle(isOn: $isImportant) {
                    Text("Is it important?").font(Font.custom ("Cinzel-Medium", size: 20))
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                    
                }
                
                //Add a padding modifier
                
                .padding()
                
                //Add Button here, delete any code in the action and with the text "Add"
                
                Button(action: {
                    self.showNewTask = false
                    self.addTask(title: self.title, isImportant: self.isImportant)
                }) {
                    Text("Add")
                    
                        .foregroundColor(Color.white)
                        .frame(width: 50.0, height: 25.0)
                        .background(Color("Gold"))
                        .cornerRadius(30)
                    
                }
                
                //Add a padding modifier
                
                .padding()
                
            }}
        }
        private func addTask(title: String, isImportant: Bool = false) {
            
            let task = ToDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
        }
        //Add the private function addTask here
        //In Iteration 2, update the function to save input to Core Data
    
}

struct NewToDoVieww_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoVieww(title: "", isImportant: false,
                    toDoItems: .constant([]), showNewTask: .constant(true), name: .constant("")
            //Add toDoItems: .constant([]) here (Iteration 1)
            //Add showNewTask: .constant(true) (Iteration 1)
            //Delete toDoItems: .constant([]) (Iteration 2_
       )
    }
}


