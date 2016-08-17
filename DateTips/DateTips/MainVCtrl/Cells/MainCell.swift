//
//  MainCell.swift
//  DateTips
//
//  Created by 古秀湖 on 16/8/17.
//  Copyright © 2016年 南天. All rights reserved.
//

import UIKit
import SnapKit

class MainCell: UITableViewCell {
    
    var photoImageView : UIImageView!;
    

    // 类方法 重用标识符
    class func cellID () -> String {
        return "MainCell"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier);

        photoImageView = UIImageView.init();
        self.contentView.addSubview(photoImageView);
        photoImageView.snp_makeConstraints { (make) in
            
        };

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
