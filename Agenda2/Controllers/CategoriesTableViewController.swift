//
//  CategoriesTableViewController.swift
//  Agenda2
//
//  Created by Caroline Eri Sato Ushirobira on 20/02/22.
//

import UIKit

class CategoriesTableViewController: UITableViewController {
    
    let categories = CategoryRepository.getCategories()
    var chosenCategory : ((Category) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChooseCategoryCell", for: indexPath)
        let category = categories[indexPath.row]
        cell.textLabel?.text = category.name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = categories[indexPath.row]
        self.chosenCategory!(category)
        //POPVIEWCONTROLLER PRA VOLTAR PRA TELA ANTERIOR
        self.navigationController?.popViewController(animated: true)
    }

}
