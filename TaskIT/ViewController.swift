//
//  ViewController.swift
//  TaskIT
//
//  Created by Cade on 9/23/14.
//  Copyright (c) 2014 Cade Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var taskArray:[Dictionary<String, String>] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let task1: Dictionary<String, String> = ["task": "Study Frend", "subtask": "Verbs and stuff", "date": "Mar 10"]
        let task2: Dictionary<String, String> = ["task": "Study Stats", "subtask": "Exam 1 is soon",  "date": "Mar 12"]
        let task3: Dictionary<String, String> = ["task": "Study iOS8",  "subtask": "Its good",        "date": "Mar 15"]
        let task4: Dictionary<String, String> = ["task": "Study Swift", "subtask": "Pretty nice",     "date": "Mar 14"]
        let task5: Dictionary<String, String> = ["task": "Get Fatter",  "subtask": "More details",    "date": "Mar 13"]
        
        taskArray = [task1, task2, task3, task4, task5]
//        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: TaskCell = tableView.dequeueReusableCellWithIdentifier("myCell") as TaskCell

        let taskDict: Dictionary = taskArray[indexPath.row]
        
        cell.taskLabel.text = taskDict["task"]
        cell.descriptionLabel.text = taskDict["subtask"]
        cell.dateLabel.text = taskDict["date"]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    
}

