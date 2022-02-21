//
//  CategoryRepository.swift
//  Agenda
//
//  Created by Caroline Eri Sato Ushirobira on 19/02/22.
//

import Foundation
import UIKit

class CategoryRepository {
    
    //MÉTODOS ESTÁTICOS NÃO PRECISAM DA INSTÂNCIA DA CLASSE
    static func getCategories() -> [Category] {
        
        let categories = [
            Category(name: "Trabalho", color: UIColor.red),
            Category(name: "Faculdade", color: UIColor.gray),
            Category(name: "Mercado", color: UIColor.orange),
            Category(name: "Evento", color: UIColor.black),
            Category(name: "Academia", color: UIColor.brown)
        ]
        
        return categories;
    }
} 
