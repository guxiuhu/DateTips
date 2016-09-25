//
//  AddBirthdayCell.swift
//  DateTips
//
//  Created by 古秀湖 on 16/9/5.
//  Copyright © 2016年 南天. All rights reserved.
//

import UIKit

class AddBirthdayCell: UITableViewCell {

    /// 标题
    @IBOutlet weak var titleLabel: UILabel!
    
    /// 内容
    @IBOutlet weak var contentField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
