//
//  Service_LeaveView_TableViewCell.swift
//  Zoho
//
//  Created by Abu Bakar on 11/9/20.
//

import UIKit

class Service_LeaveView_TableViewCell: UITableViewCell {

    
    let leftView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 25.autoSized
        view.backgroundColor = .brown
        return view
        
    }()
    
    let leftViewLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = .white
        lbl.font = UIFont.systemFont(ofSize: 18.autoSized, weight: .medium)
        lbl.numberOfLines = 0
        lbl.textAlignment = .center
        return lbl
        
    }()
    
    let title:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 16.autoSized, weight: .medium)
        return lbl
        
    }()
    
    let dateLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 14.autoSized, weight: .regular)
        return lbl
        
    }()
    
    let leaveStatus:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 12.autoSized, weight: .regular)
        lbl.textColor = .orange
        return lbl
        
    }()
    
    let convertLeaveButton:UIButton = {
       
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Convert Leave", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12.autoSized, weight: .medium)
        btn.backgroundColor = .clear
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor.blue.cgColor
        btn.layer.cornerRadius = 15.autoSized
        return btn
        
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "leaveViewCell")
        
        self.backgroundColor = .BackgroundGrey
        contentView.addSubview(leftView)
        leftView.addSubview(leftViewLabel)
        contentView.addSubview(title)
        contentView.addSubview(dateLabel)
        contentView.addSubview(leaveStatus)
        contentView.addSubview(convertLeaveButton)
        
        NSLayoutConstraint.activate([
        
            leftView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
             leftView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0),
             leftView.widthAnchor.constraint(equalToConstant: 50.autoSized),
             leftView.heightAnchor.constraint(equalToConstant: 50.autoSized),
            
            leftViewLabel.centerYAnchor.constraint(equalTo: leftView.centerYAnchor),
            leftViewLabel.centerXAnchor.constraint(equalTo: leftView.centerXAnchor),
            
            title.leadingAnchor.constraint(equalTo: leftView.trailingAnchor, constant: 22.autoSized),
            title.topAnchor.constraint(equalTo: leftView.topAnchor),
            
            dateLabel.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            dateLabel.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 3.autoSized),
            
            leaveStatus.leadingAnchor.constraint(equalTo: dateLabel.leadingAnchor),
            leaveStatus.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 3.autoSized),
            
            convertLeaveButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16.autoSized),
            convertLeaveButton.widthAnchor.constraint(equalToConstant: 100.autoSized),
            convertLeaveButton.heightAnchor.constraint(equalToConstant: 30.autoSized),
            convertLeaveButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            
            
            
        
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
