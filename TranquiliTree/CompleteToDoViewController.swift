//
//  CompleteToDoViewController.swift
//  TranquiliTree
//
//  Created by Madison Nguyen on 7/1/21.
//  Copyright © 2021 Kennedi Robison. All rights reserved.


import UIKit

class CompleteToDoViewController: UIViewController {
    
    var previousVC = ToDoTableTableViewController()
    var selectedToDo = ToDo()
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = selectedToDo.name
    }
    
    @IBAction func completeTapped(_ sender: Any) {
    
            
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
*/
}

