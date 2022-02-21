//
//  TasksTableViewController.swift
//  Agenda
//
//  Created by Caroline Eri Sato Ushirobira on 17/02/22.
//

import UIKit

/*let work = Category(name:"Work", color: UIColor.green)
let study = Category(name:"study", color: UIColor.blue)
let tasks: [Task] = [
    Task(name: "primeira task", date: Date(), category: work),
    Task(name: "segunda task", date: Date(), category: study)
]*/

class TasksTableViewController: UITableViewController {
    
    private var dateFormatter: DateFormatter = DateFormatter()
    
    private var tasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.tasks = TaskRepository.instance.getTask()
        self.tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    @IBAction func AlertIcon(_ sender: UIBarButtonItem) {
        showAlert()
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Notificações", message: "Você não possui novas notificações.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in print("apertou OK")}))
        
        present(alert, animated: true)
    }
    
    func showActionsheet() {
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskTableViewCell
        let task = tasks[indexPath.row]
        
        //POPULANDO OS CAMPOS, ARRUMANDO O FORMATO DAS DATAS E HORAS ----------------------------------------------
        dateFormatter.dateFormat = "HH:mm"
        cell.hourLabel.text = dateFormatter.string(from: task.date)
        
        dateFormatter.dateFormat = "dd/MM/yyyy"
        cell.dateLabel.text = dateFormatter.string(from: task.date)
        
        cell.categoryNameLabel.text = task.category.name
        cell.categoryView.backgroundColor = task.category.color
        cell.taskDescriptionLabel.text = task.name
        
        return cell
    }
    
   
}

