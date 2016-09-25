//
//  MainCell.swift
//  DateTips
//
//  Created by 古秀湖 on 16/8/18.
//  Copyright © 2016年 南天. All rights reserved.
//

import UIKit

class MainCell: UITableViewCell {

    /// 头像
    var photoImageView : UIImageView!
    
    /// 倒计时
    var tipLabel : UILabel!
    
    /// 用户名
    var peopleNameLabel : UILabel!
    
    /// 生日是公历/农历
    var peopleBirthdayIcon : UIImageView!
    
    /// 生日
    var peopleBirthdayLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //头像
        photoImageView = UIImageView.init();
        photoImageView.image = UIImage.init(named: "placeholder_man");
        self.contentView.addSubview(photoImageView);
        photoImageView.snp.makeConstraints { (make) in
            make.height.width.equalTo(40);
            make.left.equalTo(self.contentView).offset(20);
            make.centerY.equalTo(self.contentView);
        };
        
        //倒计时
        tipLabel = UILabel.init();
        tipLabel.textColor = UIColor.red;
        tipLabel.textAlignment = .right;
        tipLabel.text = "366日后";
        self.contentView.addSubview(tipLabel);
        tipLabel.snp.makeConstraints { (make) in
          
            make.right.equalTo(self.contentView).offset(-15);
            make.height.equalTo(30);
            make.centerY.equalTo(self.contentView);
            make.width.equalTo(80);
        };
        
        //姓名
        peopleNameLabel = UILabel.init();
        peopleNameLabel.text = "古秀湖";
        self.contentView.addSubview(peopleNameLabel);
        peopleNameLabel.snp.makeConstraints { (make) in
            make.left.equalTo(photoImageView.snp.right).offset(10);
            make.height.equalTo(20);
            make.right.equalTo(tipLabel.snp.left).offset(-10);
            make.top.equalTo(photoImageView);
        };
        
        //公历/农历
        let birthdayIcon : UIImage! = UIImage.init(named: "canlendar_luarn");
        peopleBirthdayIcon = UIImageView.init(image: birthdayIcon);
        self.contentView.addSubview(peopleBirthdayIcon);
        peopleBirthdayIcon.snp.makeConstraints { (make) in
            make.left.equalTo(peopleNameLabel);
            make.height.equalTo(birthdayIcon.size.height);
            make.width.equalTo(birthdayIcon.size.width);
            make.top.equalTo(peopleNameLabel.snp.bottom).offset(5);
        };
        
        //生日
        peopleBirthdayLabel = UILabel.init();
        peopleBirthdayLabel.font = UIFont.systemFont(ofSize: 14);
        peopleBirthdayLabel.textColor = UIColor.gray;
        peopleBirthdayLabel.text = "九月十八";
        self.contentView.addSubview(peopleBirthdayLabel);
        peopleBirthdayLabel.snp.makeConstraints { (make) in
            make.centerY.equalTo(peopleBirthdayIcon);
            make.left.equalTo(peopleBirthdayIcon.snp.right).offset(3);
            make.height.equalTo(15);
            make.right.equalTo(peopleNameLabel);
        };
    }

}
