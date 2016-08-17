//
//  MainVCtrl.swift
//  DateTips
//
//  Created by 古秀湖 on 16/8/17.
//  Copyright © 2016年 南天. All rights reserved.
//

import UIKit

class MainVCtrl: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.registerClass(MainCell.classForCoder(), forCellReuseIdentifier: MainCell.cellID());
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let mainCell = tableView.dequeueReusableCellWithIdentifier(MainCell.cellID(), forIndexPath: indexPath);
        
        // Configure the cell...

        return mainCell
    }
}
