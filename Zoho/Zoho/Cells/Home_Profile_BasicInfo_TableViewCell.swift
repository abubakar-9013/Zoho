//
//  Home_Profile_BasicInfo_TableViewCell.swift
//  Zoho
//
//  Created by Abu Bakar on 11/7/20.
//

import UIKit

class Home_Profile_BasicInfo_TableViewCell: UITableViewCell {
    
    let rightLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = UIFont.systemFont(ofSize: 15.autoSized, weight: .regular)
        return lbl
        
    }()
    
    let imageV:UIImageView = {
       let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
       return imgv
        
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "basicInfoCell")
        
        contentView.addSubview(rightLabel)
        contentView.addSubview(imageV)
        textLabel?.translatesAutoresizingMaskIntoConstraints = false
        textLabel?.font = UIFont.systemFont(ofSize: 14.autoSized, weight: .medium)
        textLabel?.numberOfLines = 0
        
        NSLayoutConstraint.activate([
        
            textLabel!.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32.autoSized),
            textLabel!.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0),
            textLabel!.widthAnchor.constraint(equalToConstant: 130.autoSized),
            
            rightLabel.leadingAnchor.constraint(equalTo: textLabel!.trailingAnchor, constant: 10.autoSized),
            rightLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0),
            rightLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10.autoSized),
            
            imageV.leadingAnchor.constraint(equalTo: textLabel!.trailingAnchor, constant: 10.autoSized),
            imageV.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            imageV.widthAnchor.constraint(equalToConstant: 32.autoSized),
            imageV.heightAnchor.constraint(equalToConstant: 32.autoSized),
            
            
            
        
        
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
