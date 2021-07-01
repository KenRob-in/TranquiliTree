//
//  CompleteToDoViewController.swift
//  TranquiliTree
//
//  Created by Madison Nguyen on 7/1/21.
//  Copyright © 2021 Kennedi Robison. All rights reserved.

    import UIKit

    class CompleteToDoViewController: UIViewController {

        var previousVC = ToDoTableViewController()
        var selectedToDo : ToDoCD?
        

        @IBOutlet weak var titleLabel: UILabel!
        
    
        override func viewDidLoad(){
        super.viewDidLoad()
        titleLabel.text = selectedToDo?.name
        }
  
    

        @IBAction func completeTapped(_ sender: UIButton) {
            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
                                    return
                                }
                                let context = appDelegate.persistentContainer.viewContext
                                
                                if let theToDo = selectedToDo {
                                    context.delete(theToDo)
                                    navigationController?.popViewController(animated: true)
                                }
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

