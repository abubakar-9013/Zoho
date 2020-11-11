//
//  Home_Department_TableViewCell.swift
//  Zoho
//
//  Created by Abu Bakar on 11/1/20.
//

import UIKit

class Home_Department_TableViewCell: UITableViewCell {

    let leftView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20.autoSized
        view.layer.masksToBounds = true
        view.clipsToBounds = true
        return view
        
    }()
    
    let profilePicImageView:UIImageView = {
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFill
        return imgv
    }()
    
    let NameTitle:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 16.autoSized, weight: .medium)
        return lbl
    }()
    
    let idIcon:UIImageView = {
       
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.image = UIImage(named: "mobile")
        return imgv
        
    }()
    
    let personID:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 14.autoSized, weight: .regular)
        return lbl
        
    }()
    
    let mobileIconImageView:UIImageView = {
       
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.image = UIImage(named: "mobile")
        return imgv
        
    }()
    
    let mobileNumberLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 14.autoSized, weight: .regular)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
        
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "DepartmentCell")
        
        contentView.addSubview(leftView)
        leftView.addSubview(profilePicImageView)
        contentView.addSubview(NameTitle)
        contentView.addSubview(idIcon)
        contentView.addSubview(personID)
        contentView.addSubview(mobileIconImageView)
        contentView.addSubview(mobileNumberLabel)
        
        
        NSLayoutConstraint.activate([
        
            leftView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            leftView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0),
            leftView.widthAnchor.constraint(equalToConstant: 40.autoSized),
            leftView.heightAnchor.constraint(equalToConstant: 40.autoSized),
        
            //ProfilePic ImageView
            profilePicImageView.centerXAnchor.constraint(equalTo: leftView.centerXAnchor),
            profilePicImageView.centerYAnchor.constraint(equalTo: leftView.centerYAnchor),
            profilePicImageView.widthAnchor.constraint(equalToConstant: 40.autoSized),
            profilePicImageView.heightAnchor.constraint(equalToConstant: 40.autoSized),
            
            //NameTitle Label
            NameTitle.leadingAnchor.constraint(equalTo: leftView.trailingAnchor, constant: 20.autoSized),
            NameTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20.autoSized),
            NameTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16.autoSized),
            
            //IdIcon ImageView
            idIcon.leadingAnchor.constraint(equalTo: leftView.trailingAnchor, constant: 20.autoSized),
            idIcon.widthAnchor.constraint(equalToConstant: 16.autoSized),
            idIcon.heightAnchor.constraint(equalToConstant: 16.autoSized),
            idIcon.topAnchor.constraint(equalTo: NameTitle.bottomAnchor, constant: 6.autoSized),
            
            //PersonID Label
            personID.leadingAnchor.constraint(equalTo: idIcon.trailingAnchor, constant: 5.autoSized),
            personID.centerYAnchor.constraint(equalTo: idIcon.centerYAnchor, constant: 0),
            personID.widthAnchor.constraint(equalToConstant: 80.autoSized),
            
            //MobileIcon ImageView
            mobileIconImageView.leadingAnchor.constraint(equalTo: personID.trailingAnchor, constant: 5.autoSized),
            mobileIconImageView.centerYAnchor.constraint(equalTo: personID.centerYAnchor, constant: 0),
            mobileIconImageView.widthAnchor.constraint(equalToConstant: 16.autoSized),
            mobileIconImageView.heightAnchor.constraint(equalToConstant: 16.autoSized),
            
            //MobileNumber Label
            mobileNumberLabel.leadingAnchor.constraint(equalTo: mobileIconImageView.trailingAnchor, constant: 5.autoSized),
            mobileNumberLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0.autoSized),
            mobileNumberLabel.centerYAnchor.constraint(equalTo: mobileIconImageView.centerYAnchor, constant: 0)
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
