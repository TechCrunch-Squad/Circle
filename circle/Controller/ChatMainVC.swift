//
//  ChatMainVC.swift
//  circle
//
//  Created by Jorge Bastos on 9/10/16.
//  Copyright © 2016 John Montejano. All rights reserved.
//

import UIKit

class ChatMainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
   override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
    self.tabBarController?.tabBar.hidden = false

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("chatview", forIndexPath: indexPath)
        let index = [indexPath.row]
        cell.textLabel?.text = "John Contact Info"
        return cell
    }
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        performSegueWithIdentifier("chatSegue", sender: nil)
//    }
}
