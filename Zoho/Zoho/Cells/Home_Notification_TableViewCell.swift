//
//  Home_Notification_TableViewCell.swift
//  Zoho
//
//  Created by Abu Bakar on 11/5/20.
//

import UIKit

class Home_Notification_TableViewCell: UITableViewCell {
    
    
    let leftView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .buttonGreen
        view.layer.cornerRadius = 20.autoSized
        view.layer.masksToBounds = true
        
        return view
        
    }()
    
    let leftImageView:UIImageView = {
       
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFit
        imgv.layer.masksToBounds = true
        
        return imgv
        
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: "notificationCell")
        
        contentView.addSubview(leftView)
        leftView.addSubview(leftImageView)
        
        textLabel!.font = UIFont.systemFont(ofSize: 15.autoSized, weight: .medium)
        detailTextLabel?.font = UIFont.systemFont(ofSize: 13.autoSized, weight: .regular)
        detailTextLabel?.textColor = .lightGray
        textLabel?.translatesAutoresizingMaskIntoConstraints = false
        detailTextLabel?.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            leftView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            leftView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0),
            leftView.widthAnchor.constraint(equalToConstant: 40.autoSized),
            leftView.heightAnchor.constraint(equalToConstant: 40.autoSized),
            
            leftImageView.centerYAnchor.constraint(equalTo: leftView.centerYAnchor, constant: 0),
            leftImageView.centerXAnchor.constraint(equalTo: leftView.centerXAnchor, constant: 0),
            leftImageView.widthAnchor.constraint(equalToConstant: 24.autoSized),
            leftImageView.heightAnchor.constraint(equalToConstant: 24.autoSized),
            
            textLabel!.leadingAnchor.constraint(equalTo: leftView.trailingAnchor, constant: 15.autoSized),
            textLabel!.topAnchor.constraint(equalTo: leftView.topAnchor, constant: 0),
            textLabel!.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8.autoSized),
            
            
            detailTextLabel!.leadingAnchor.constraint(equalTo: leftView.trailingAnchor, constant: 15.autoSized),
            detailTextLabel!.topAnchor.constraint(equalTo: textLabel!.bottomAnchor, constant: 5),
            detailTextLabel!.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8.autoSized)
        ])
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
