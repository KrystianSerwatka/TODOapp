//
//  CategoryViewController.swift
//  TODOapp
//
//  Created by Krystian on 18/10/2022.
//

import UIKit

class TasksViewController: UITableViewController {

    @IBSegueAction func showDetailsTaskView(_ coder: NSCoder) -> DetailsTaskView? {
        guard let indexPath = tableView.indexPathForSelectedRow
        	else { fatalError("Nothing selected!") }
        let task = TasksLibrary.tasks[indexPath.row]
    
        return DetailsTaskView(coder: coder, task: task)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - DataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        TasksLibrary.tasks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TasksView", for: indexPath)
        let task = TasksLibrary.tasks[indexPath.row]
        
        cell.textLabel?.text = task.title
        return cell
    }
}
