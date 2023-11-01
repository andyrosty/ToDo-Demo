//
//  TasksView.swift
//  ToDo Demo
//
//  Created by Andrew Acheampong on 11/1/23.
//

import SwiftUI

struct TasksView: View {
    @EnvironmentObject var realmManager : RealManager
    
    var body: some View {
        VStack {
            VStack{
                Text("My Tasks")
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                List{
                    ForEach(realmManager.tasks, id: \.id){
                        task in
                        if !task.isInvalidated{
                            TaskRow(task: task.title, completeed: task.completed)
                                .onTapGesture {
                                    realmManager.updateTask(id: task.id, completed: !task.completed)
                                }
                                .swipeActions(edge: .trailing){
                                    Button(role: .destructive){
                                        realmManager.deleteTask(id: task.id)
                                    }label : {
                                        Label("Delete", systemImage: "trash")
                                    }
                                }
                        }
                        
                    }
                    
                }
                .onAppear{
                    UITableView.appearance().backgroundColor = UIColor.clear
                    UITableViewCell.appearance().backgroundColor = UIColor.clear
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hue: 0.563, saturation: 0.448, brightness: 0.947))
    }
}

#Preview {
    TasksView().environmentObject(RealManager())
}
