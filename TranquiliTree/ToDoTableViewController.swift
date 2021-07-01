//
//  ToDoTableTableViewController.swift
//  TranquiliTree
//
//  Created by Madison Nguyen on 7/1/21.
//  Copyright © 2021 Kennedi Robison. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController  {
    
    var toDos : [ToDoCD] = [ ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        getToDos()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getToDos()
    }
        
        
        func getToDos() {
            if let context = (UIApplication.shared.delegate as?
                AppDelegate)?.persistentContainer.viewContext {
                if let coreDataToDos = try? context.fetch(ToDoCD.fetchRequest()) as? [ToDoCD] {
                    toDos = coreDataToDos
                    tableView.reloadData()
                    }
                }
            }
    

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    
    
    


    // MARK: - Table view data source
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let toDo = toDos[indexPath.row]
        
        performSegue(withIdentifier: "moveToComplete", sender: toDo)
}

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        let toDo = toDos[indexPath.row]
         
        if toDo.important {
            cell.textLabel?.text = "◉ " + (toDo.name ?? "Failed to Load")
        } else {
            cell.textLabel?.text = "○ " + (toDo.name ?? "Failed to Load")
        }

        
        return cell
    }
    
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddToDoViewController {
            addVC.previousVC = self
        }
        
        if let completeVC = segue.destination as? CompleteToDoViewController {
            if let toDo = sender as? ToDoCD {
                completeVC.selectedToDo = toDo
                completeVC.previousVC = self
            }
        }
    }
}
