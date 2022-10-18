//
//  CategoriesViewController.swift
//  TODOapp
//
//  Created by Krystian on 18/10/2022.
//

import UIKit

class CategoriesViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - DataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        TasksLibrary.tasks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoriesView", for: indexPath)
        let task = TasksLibrary.tasks[indexPath.row]
        
        cell.textLabel?.text = task.chooseCategory
        return cell
    }
}
