//
//  ContentView.swift
//  ToDo Demo
//
//  Created by Andrew Acheampong on 11/1/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var  realmManager = RealManager()
    @State private var showAddTaskView = false
    
    var body: some View {
       ZStack(alignment: .bottomLeading){
                TasksView()
               .environmentObject(realmManager)
                
                SmallAddButton()
               .padding()
               .onTapGesture {
                   showAddTaskView.toggle()
               }
            }
       .sheet(isPresented: $showAddTaskView){
           AddTaskView()
               .environmentObject(realmManager)
       }
            .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .bottom)
            .background(Color(hue: 0.563, saturation: 0.448, brightness: 0.947))
        }
        
}

#Preview {
    ContentView()
}
