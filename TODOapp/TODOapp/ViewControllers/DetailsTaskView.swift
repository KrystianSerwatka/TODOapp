//
//  DetailsTaskView.swift
//  TODOapp
//
//  Created by Krystian on 18/10/2022.
//

import UIKit

class DetailsTaskView: UIViewController, UITextViewDelegate {
    
    let task: Task
    
    @IBOutlet var titleOfTask: UITextView!
    @IBOutlet var descriptionOfTask: UITextView!
    @IBOutlet var categoryOfTask: UITextView!
    
    @IBOutlet weak var TitleTextView: UITextView! {
        didSet {
            TitleTextView.delegate = self
        }
    }
    
    @IBOutlet weak var DescriptionTextView: UITextView! {
        didSet {
            DescriptionTextView.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleOfTask.text = task.title
        descriptionOfTask.text = task.description
        categoryOfTask.text = task.chooseCategory
    }
    
    private func textLimit(existingText: String?,
                           newText: String,
                           limit: Int) -> Bool {
        let text = existingText ?? ""
        let isAtLimit = text.count + newText.count <= limit
        return isAtLimit
    }
    
    func textView(_ textView: UITextView,
                  shouldChangeTextIn range: NSRange,
                  replacementText text: String) -> Bool {
        return self.textLimit(existingText: textView.text,
                              newText: text,
                              limit: 255)
    }
    required init?(coder: NSCoder) { fatalError("This should never be called!") }
    
    init?(coder: NSCoder, task: Task) {
        self.task = task
        super.init(coder: coder)
    }
}
