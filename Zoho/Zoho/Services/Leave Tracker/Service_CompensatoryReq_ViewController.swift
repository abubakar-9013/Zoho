//
//  Service_CompensatoryReq_ViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 11/9/20.
//

import UIKit

class Service_CompensatoryReq_ViewController: CustomClassWithNavBar {

    
    let topLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Compensatory Request"
        lbl.font = UIFont.systemFont(ofSize: 32.autoSized, weight: .bold)
        return lbl
        
    }()
    
    let mainImageView:UIImageView = {
    
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "package")
        return view
        
    }()
    
    let label:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "NO RECORDS FOUND"
        lbl.font = UIFont.systemFont(ofSize: 14.autoSized, weight: .medium)
        return lbl
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .BackgroundGrey
        self.tabBarController?.tabBar.isHidden = false
        bellView.image = UIImage(named: "filter")
        searchView.image = UIImage(named: "plus-math")
        profilePictureView.image = UIImage(named: "left-arrow")
        profilePictureView.layer.cornerRadius = 0
        profilePictureView.layer.borderWidth = 0
        let backGest = UITapGestureRecognizer(target: self, action: #selector(backToMain))
        profilePictureView.addGestureRecognizer(backGest)
        
        let addRequestGest = UITapGestureRecognizer(target: self, action: #selector(addRequest))
        searchView.addGestureRecognizer(addRequestGest)
        
        let filterGest = UITapGestureRecognizer(target: self, action: #selector(openFilter))
        bellView.addGestureRecognizer(filterGest)
        setup()
        
        
        
    }
    
    @objc func backToMain() {
       
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func addRequest() {
        let vc = Service_AddRequest_ViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func openFilter() {
        let vc = Service_Filter_ViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func setup () {
        view.addSubview(topLabel)
        view.addSubview(mainImageView)
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
        
            topLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.autoSized),
            topLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 92.autoSized),
            
            mainImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -15.autoSized),
            mainImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainImageView.widthAnchor.constraint(equalToConstant: 150.autoSized),
            mainImageView.heightAnchor.constraint(equalToConstant: 150.autoSized),
            
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 15.autoSized)
            
            
        ])
        
    }
    
}
