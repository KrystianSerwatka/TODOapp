//
//  ViewController.swift
//  TODOapp
//
//  Created by Krystian on 02/10/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func TasksButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "TasksVC", sender: self)
    }

    @IBAction func CategoriesButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "CategoriesVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TasksVC" || segue.identifier == "CategoriesVC"  {
            guard segue.destination is TasksViewController, segue.destination is CategoriesViewController else { return }
        }
    }
}

