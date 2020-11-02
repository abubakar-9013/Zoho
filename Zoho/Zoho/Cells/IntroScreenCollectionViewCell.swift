//
//  IntroScreenCollectionViewCell.swift
//  Zoho
//
//  Created by Abu Bakar on 10/30/20.
//

import UIKit

class IntroScreenCollectionViewCell: UICollectionViewCell {
    
    let imgView:UIImageView = {
       
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        return img
        
    }()
    
    let topLabel:UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        //lbl.font = UIFont(name: "GrotesqueMT-Bold", size: 32)
        lbl.font = UIFont.systemFont(ofSize: 36, weight: .heavy)
        return lbl
        
    }()
    
    
    let detailLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return lbl
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imgView)
        contentView.addSubview(topLabel)
        contentView.addSubview(detailLabel)
        
        
        NSLayoutConstraint.activate([
        
            imgView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 40),
            imgView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -40),
            imgView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: 0),
            imgView.heightAnchor.constraint(equalToConstant: 200.autoSized),
            
            
            //TopLabel
            topLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 30),
            topLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -20),
            topLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10),
            
            //Bottom Label
            detailLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 35.autoSized),
            detailLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -70),
            detailLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 15.autoSized)
        
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
