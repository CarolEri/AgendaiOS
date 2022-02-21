//
//  Task.swift
//  Agenda
//
//  Created by Caroline Eri Sato Ushirobira on 17/02/22.
//

import Foundation

struct Task {
    
    //STRING GERADA QUE RARAMENTE VAI SE REPETIR
    var id = UUID()
    var name: String = ""
    var date: Date = Date()
    var category: Category = Category(name: "", color: .black)
}
