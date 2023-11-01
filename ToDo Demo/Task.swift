//
//  Task.swift
//  ToDo Demo
//
//  Created by Andrew Acheampong on 11/1/23.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id:ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
