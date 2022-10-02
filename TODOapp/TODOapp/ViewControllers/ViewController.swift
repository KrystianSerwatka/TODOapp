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

    @IBAction func AddTaskButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "TaskVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TaskVC" {
            guard segue.destination is TaskViewController else { return }
        }
    }
}

