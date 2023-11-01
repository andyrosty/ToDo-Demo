//
//  TaskRow.swift
//  ToDo Demo
//
//  Created by Andrew Acheampong on 11/1/23.
//

import SwiftUI

struct TaskRow: View {
    var task: String
    var completeed: Bool
    
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: completeed ?
                  "checkmark.circle": "circle")
            
            Text(task)
        }
    }
}

#Preview {
    TaskRow(task: "Do Laundry", completeed: true)
}
