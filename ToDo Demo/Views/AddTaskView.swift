//
//  AddTaskView.swift
//  ToDo Demo
//
//  Created by Andrew Acheampong on 11/1/23.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager : RealManager
    @State private var titlle: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Create New Task")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            
            TextField("Enter your task here", text:$titlle)
                .textFieldStyle(.roundedBorder)
            
            Button{
                if titlle != ""{
                    realmManager.addTask(taskTitle: titlle)
                }
                dismiss()
            } label: {
                Text("Add")
                    .foregroundColor(.black)
                    .padding()
                    .padding(.horizontal)
                    .background(Color(hue: 0.942, saturation: 0.582, brightness: 0.761))
                    .cornerRadius(30)
            }
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color(hue: 0.563, saturation: 0.448, brightness: 0.947))
    }
}

#Preview {
    AddTaskView().environmentObject(RealManager())
}
