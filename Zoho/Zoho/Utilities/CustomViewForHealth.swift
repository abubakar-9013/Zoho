//
//  CustomViewForHealth.swift
//  Zoho
//
//  Created by Abu Bakar on 11/4/20.
//

import UIKit

class CustomViewForHealth: UIView {
    
    
    let imageView:UIImageView = {
    
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFit
        return imgv
    
    }()
    
    
    let label:UILabel = {
    
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 14.autoSized, weight: .medium)
        lbl.numberOfLines = 0
        lbl.textAlignment = .center
        return lbl
    
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 10.autoSized
        self.backgroundColor = .BackgroundGrey
        
        self.addSubview(imageView)
        self.addSubview(label)
    
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
