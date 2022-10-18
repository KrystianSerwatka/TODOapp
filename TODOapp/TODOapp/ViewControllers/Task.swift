//
//  Task.swift
//  TODOapp
//
//  Created by Krystian on 18/10/2022.
//

import UIKit

class Task {
    let title: String
    let description: String
    let chooseCategory: String
//    let priority: [String]
//    let dueDate: Date
    
    init(title: String, description: String, chooseCategory: String) {
        self.title = title
        self.description = description
        self.chooseCategory = chooseCategory
    }
}
