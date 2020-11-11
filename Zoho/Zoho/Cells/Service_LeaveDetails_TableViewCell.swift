//
//  Service_LeaveDetails_TableViewCell.swift
//  Zoho
//
//  Created by Abu Bakar on 11/9/20.
//

import UIKit

class Service_LeaveDetails_TableViewCell: UITableViewCell {
    
    let imageV: UIImageView = {
       
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFill
        imgv.image = UIImage(named: "line")
        return imgv
        
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: "leaveDetailCell")
        
        self.backgroundColor = .BackgroundGrey
        //contentView.addSubview(imageV)
        
        textLabel?.font = UIFont.systemFont(ofSize: 16.autoSized, weight: .medium)
        detailTextLabel?.font = UIFont.systemFont(ofSize: 15.autoSized, weight: .light)
        textLabel?.translatesAutoresizingMaskIntoConstraints = false
        detailTextLabel?.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            textLabel!.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16.autoSized),
            textLabel!.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15.autoSized),
            
            detailTextLabel!.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16.autoSized),
            detailTextLabel!.topAnchor.constraint(equalTo: textLabel!.bottomAnchor, constant: 5.autoSized),
            detailTextLabel!.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15.autoSized)
            
//            imageV.leadingAnchor.constraint(equalTo: textLabel!.leadingAnchor),
//            imageV.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -50.autoSized),
//            imageV.topAnchor.constraint(equalTo: detailTextLabel!.bottomAnchor, constant: 15.autoSized),
//            imageV.heightAnchor.constraint(equalToConstant: 1.autoSized),
//            imageV.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15.autoSized)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
