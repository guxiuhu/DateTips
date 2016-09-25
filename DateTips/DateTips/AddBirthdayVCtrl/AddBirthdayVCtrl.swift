//
//  AddBirthdayVCtrl.swift
//  DateTips
//
//  Created by 古秀湖 on 16/9/5.
//  Copyright © 2016年 南天. All rights reserved.
//

import UIKit

class AddBirthdayVCtrl: UITableViewController {

    var titleAry : NSMutableArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleAry = ["姓名","生日","性别","电话"];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return titleAry.count;
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : AddBirthdayCell = tableView.dequeueReusableCell(withIdentifier: "AddBirthdayCell", for: indexPath) as! AddBirthdayCell;
        
        // Configure the cell...
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true);
    }


}
