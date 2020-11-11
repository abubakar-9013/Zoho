//
//  Service_LeaveTracker_TableViewCell.swift
//  Zoho
//
//  Created by Abu Bakar on 11/9/20.
//

import UIKit

class Service_LeaveTracker_TableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "leaveTrackerCell")
        
        textLabel?.font = UIFont.systemFont(ofSize: 15.autoSized, weight: .medium)
        textLabel?.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .BackgroundGrey
        NSLayoutConstraint.activate([
        
            textLabel!.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            textLabel!.leadingAnchor.constraint(equalTo: contentView.leadingAnchor)
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
