//
//  HomeTableViewCell.swift
//  Zoho
//
//  Created by Abu Bakar on 10/31/20.
//

import UIKit

class Home_LeaveReport_TableViewCell: UITableViewCell {
    
    
    let leftView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20.autoSized
        view.backgroundColor = .brown
        return view
        
    }()
    
    let leftViewLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = .white
        lbl.font = UIFont.systemFont(ofSize: 14.autoSized, weight: .medium)
        return lbl
        
    }()
    
    let title:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 16.autoSized, weight: .medium)
        return lbl
        
    }()
    
    let takenLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 12.autoSized, weight: .regular)
        return lbl
        
    }()
    
    let balanceLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 12.autoSized, weight: .regular)
        return lbl
        
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "LeaveReportCell")
        
        //contentView.addSubview(leftImageView)
        contentView.addSubview(leftView)
        leftView.addSubview(leftViewLabel)
        contentView.addSubview(title)
        contentView.addSubview(takenLabel)
        contentView.addSubview(balanceLabel)
        
        
        
        NSLayoutConstraint.activate([
            
            //LeftView
            leftView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
             leftView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0),
             leftView.widthAnchor.constraint(equalToConstant: 40.autoSized),
             leftView.heightAnchor.constraint(equalToConstant: 40.autoSized),
            
            //Title Label
            title.leadingAnchor.constraint(equalTo: leftView.trailingAnchor, constant: 20.autoSized),
            title.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20.autoSized),
            title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16.autoSized),
            
            //LeftView Label
            leftViewLabel.centerXAnchor.constraint(equalTo: leftView.centerXAnchor, constant: 0),
            leftViewLabel.centerYAnchor.constraint(equalTo: leftView.centerYAnchor, constant: 0),
            
            //Taken Label
            takenLabel.leadingAnchor.constraint(equalTo: leftView.trailingAnchor, constant: 20.autoSized),
            takenLabel.widthAnchor.constraint(equalToConstant: 65.autoSized),
            takenLabel.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 6.autoSized),
            
            //Balance Label
            balanceLabel.leadingAnchor.constraint(equalTo: takenLabel.trailingAnchor, constant: 3.autoSized),
            balanceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16.autoSized),
            balanceLabel.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 6.autoSized),
            
           
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
