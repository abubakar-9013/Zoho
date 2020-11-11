//
//  ServicesCollectionViewCell.swift
//  Zoho
//
//  Created by Abu Bakar on 11/8/20.
//

import UIKit

class ServicesCollectionViewCell: UICollectionViewCell {
 
    let imgView:UIImageView = {
       
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        img.image = UIImage(named: "holidays")
        return img
        
    }()
    
    let bottomLabel:UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = UIFont.systemFont(ofSize: 12.autoSized, weight: .bold)
        lbl.textAlignment = .center
        return lbl
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        contentView.addSubview(imgView)
        contentView.addSubview(bottomLabel)
        
        NSLayoutConstraint.activate([
            
            
            
            imgView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            imgView.topAnchor.constraint(equalTo: contentView.topAnchor, constant:30.autoSized),
            imgView.widthAnchor.constraint(equalToConstant: 60.autoSized),
            imgView.heightAnchor.constraint(equalToConstant: 60.autoSized),
            
            bottomLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            bottomLabel.topAnchor.constraint(equalTo: imgView.bottomAnchor, constant: 20.autoSized),
            
            
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
