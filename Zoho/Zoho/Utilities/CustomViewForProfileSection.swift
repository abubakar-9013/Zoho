//
//  CustomViewForProfileSection.swift
//  Zoho
//
//  Created by Abu Bakar on 11/6/20.
//

import UIKit

class CustomViewForProfileSection: UIView {
    
    var label:UILabel = {
    
        var lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 20.autoSized, weight: .bold)
        lbl.numberOfLines = 0
        lbl.textAlignment = .center
        return lbl
    
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 10.autoSized
        self.backgroundColor = .white
        
        self.addSubview(label)
        
        NSLayoutConstraint.activate([
        
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 32.autoSized),
            label.topAnchor.constraint(equalTo: self.topAnchor, constant: 24.autoSized)
        
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}





class viewsForAbout:UIView {
    
    let imageView:UIImageView = {
       
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFit
        return imgv
        
    }()
    
    let label:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 16.autoSized, weight: .light)
        return lbl
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(imageView)
        self.addSubview(label)
//        self.backgroundColor = .yellow
        
        NSLayoutConstraint.activate([
        
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0.autoSized),
            imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            imageView.heightAnchor.constraint(equalTo: self.heightAnchor, constant: 0),
            imageView.widthAnchor.constraint(equalToConstant: 24.autoSized),
            
            label.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 20.autoSized),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12.autoSized),
            label.centerYAnchor.constraint(equalTo: imageView.centerYAnchor, constant: 0)
        
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


class viewsForAvailability:UIView {
        
    let leftLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 14.autoSized, weight: .light)
        lbl.textColor = .gray
        lbl.textAlignment = .left
        return lbl
        
    }()
    
    let rightLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 15.autoSized, weight: .regular)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
        
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(leftLabel)
        self.addSubview(rightLabel)
        
        NSLayoutConstraint.activate([
        
            leftLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0.autoSized),
            leftLabel.widthAnchor.constraint(equalToConstant: 90.autoSized),
            leftLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            
            
            rightLabel.leadingAnchor.constraint(equalTo: leftLabel.trailingAnchor, constant: 50.autoSized),
            //rightLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12.autoSized),
            rightLabel.centerYAnchor.constraint(equalTo: leftLabel.centerYAnchor, constant: 0)
        
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


