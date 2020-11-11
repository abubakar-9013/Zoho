//
//  Service_Holiday_TableViewCell.swift
//  Zoho
//
//  Created by Abu Bakar on 11/10/20.
//

import UIKit

class Service_Holiday_TableViewCell: UITableViewCell {

    
    let leftView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 25.autoSized
        view.layer.masksToBounds = true
        
        return view
        
    }()
    
    let leftViewLabel : UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 14.autoSized, weight: .regular)
        lbl.textColor = .white
        return lbl
        
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: "holidaysCell")
        
        self.backgroundColor = .BackgroundGrey
        contentView.addSubview(leftView)
        leftView.addSubview(leftViewLabel)
        
        textLabel?.font = UIFont.systemFont(ofSize: 15.autoSized, weight: .bold)
        detailTextLabel?.font = UIFont.systemFont(ofSize: 13.autoSized, weight: .regular)
        textLabel?.translatesAutoresizingMaskIntoConstraints = false
        detailTextLabel?.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            textLabel!.leadingAnchor.constraint(equalTo: leftView.trailingAnchor, constant: 18.autoSized),
            textLabel!.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 25.autoSized),
            textLabel!.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16.autoSized),
            
            detailTextLabel!.leadingAnchor.constraint(equalTo: leftView.trailingAnchor, constant: 18.autoSized),
            detailTextLabel!.topAnchor.constraint(equalTo: textLabel!.bottomAnchor, constant: 3.autoSized),
            detailTextLabel!.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16.autoSized),
            
        
            leftView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16.autoSized),
            leftView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            leftView.widthAnchor.constraint(equalToConstant: 50.autoSized),
            leftView.heightAnchor.constraint(equalToConstant: 50.autoSized),
            
            leftViewLabel.centerYAnchor.constraint(equalTo: leftView.centerYAnchor),
            leftViewLabel.centerXAnchor.constraint(equalTo: leftView.centerXAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
