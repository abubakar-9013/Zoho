//
//  Home_ApplyLeave_TableViewCell.swift
//  Zoho
//
//  Created by Abu Bakar on 11/3/20.
//

import UIKit

class Home_ApplyLeave_TableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: "applyLeaveCell")
            
        textLabel?.translatesAutoresizingMaskIntoConstraints = false
        detailTextLabel?.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            textLabel!.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20.autoSized),
            textLabel!.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15.autoSized),
            detailTextLabel!.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20.autoSized),
            detailTextLabel!.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15.autoSized)
            
        
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
