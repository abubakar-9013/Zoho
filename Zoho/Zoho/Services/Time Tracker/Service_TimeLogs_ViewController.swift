//
//  Service_TimeLogs_ViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 11/10/20.
//

import UIKit

class Service_TimeLogs_ViewController: CustomClassWithNavBar {

    let newBarItem:UIImageView = {
       
        let imageview = UIImageView(frame: CGRect(x: 0, y: 0, width: 50.autoSized, height: 50.autoSized))
        imageview.image = UIImage(named: "search-client")
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.contentMode = .center
        imageview.layer.masksToBounds = true
        return imageview
    }()
    
    
    let topLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Time Logs"
        lbl.font = UIFont.systemFont(ofSize: 32.autoSized, weight: .heavy)
        return lbl
        
    }()
    
    
    let dateView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .segmentControlGrey
        view.layer.cornerRadius = 24.autoSized
        return view
        
    }()
    
    let leftbutton:UIButton = {
       
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.contentMode = .scaleAspectFit
        btn.setImage(UIImage(named: "left"), for: .normal)
        return btn
        
    }()
        
    let rightbutton:UIButton = {
       
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.contentMode = .scaleAspectFit
        btn.setImage(UIImage(named: "right"), for: .normal)
        return btn
        
    }()
    
    let dateLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "01-01-2020 TO 31-12-2020"
        lbl.font = UIFont.systemFont(ofSize: 12.autoSized, weight: .bold)
        lbl.textAlignment = .center
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
        lbl.text = "NO TIME LOG(S) FOUND"
        lbl.font = UIFont.systemFont(ofSize: 14.autoSized, weight: .medium)
        return lbl
        
    }()
    
    let bottomView:UIView = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.shadowColor = UIColor.veryLightGrey.cgColor
        view.layer.shadowOffset = CGSize(width: -1.0, height: 6.0)
        view.layer.shadowRadius = 2.0
        view.layer.shadowOpacity = 0.5
        view.layer.masksToBounds = false
        view.layer.borderWidth = 0.3
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
        
    }()
    
    let bottomButton:UIButton = {
       
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Submit", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 14.autoSized, weight: .heavy)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .segmentControlGreen
        btn.layer.cornerRadius = 20.autoSized
        btn.titleLabel?.translatesAutoresizingMaskIntoConstraints = false
        btn.contentHorizontalAlignment = .left
        btn.contentVerticalAlignment = .top
        btn.titleEdgeInsets = UIEdgeInsets(top: 4.0, left: 30.0, bottom: 0.0, right: 0.0)
        return btn
        
    }()
    
    let bottomButtonSecondLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "00:00 Hr"
        lbl.textColor = .white
        lbl.font = UIFont.systemFont(ofSize: 11.autoSized, weight: .medium)
        return lbl
        
    }()
    
    let submittedLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Submitted"
        lbl.font = UIFont.systemFont(ofSize: 15.autoSized, weight: .medium)
        lbl.textColor = .systemOrange
        return lbl
        
    }()
    
    let submittedTime:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "00:00 Hr"
        lbl.font = UIFont.systemFont(ofSize: 15.autoSized, weight: .light)
        return lbl
        
    }()
    
    let totalLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Total"
        lbl.font = UIFont.systemFont(ofSize: 15.autoSized, weight: .medium)
        lbl.textColor = .systemBlue
        return lbl
        
    }()
    
    let totalTime:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 15.autoSized, weight: .light)
        lbl.text = "00:00 Hr"
        return lbl
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bellView.image = UIImage(named: "filter2")
        searchView.image = UIImage(named: "plus-math")
        profilePictureView.image = UIImage(named: "left-arrow")
        profilePictureView.layer.borderWidth = 0
        
//        let rtBarBtn = UIBarButtonItem(customView: newBarItem)
//        let rt1 = UIBarButtonItem(customView: bellView)
//        let rt2 = UIBarButtonItem(customView: searchView)
//        let space = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
//        space.width = 30
//        navigationItem.rightBarButtonItems = [rt1,space,rt2,space, rtBarBtn]
//        
        let backGest = UITapGestureRecognizer(target: self, action: #selector(backToMain))
        profilePictureView.addGestureRecognizer(backGest)
        
        view.backgroundColor = .BackgroundGrey
        
        setup()
    }
    
    @objc func backToMain() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func setup() {
        
        self.tabBarController?.tabBar.isHidden = true
        view.addSubview(topLabel)
        view.addSubview(dateView)
        dateView.addSubview(rightbutton)
        dateView.addSubview(leftbutton)
        dateView.addSubview(dateLabel)
        view.addSubview(mainImageView)
        view.addSubview(label)
        bottomView.addSubview(bottomButton)
        bottomButton.addSubview(bottomButtonSecondLabel)
        bottomView.addSubview(submittedLabel)
        bottomView.addSubview(submittedTime)
        bottomView.addSubview(totalLabel)
        bottomView.addSubview(totalTime)
        view.addSubview(bottomView)
        
        
        NSLayoutConstraint.activate([
        
            topLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.autoSized),
            topLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 92.autoSized),
            
            dateView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.autoSized),
            dateView.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 35.autoSized),
            dateView.widthAnchor.constraint(equalToConstant: 280.autoSized),
            dateView.heightAnchor.constraint(equalToConstant: 48.autoSized),
            
            rightbutton.trailingAnchor.constraint(equalTo: dateView.trailingAnchor, constant: 0.autoSized),
            rightbutton.centerYAnchor.constraint(equalTo: dateView.centerYAnchor, constant: 0),
            rightbutton.widthAnchor.constraint(equalToConstant: 75.autoSized),
            rightbutton.heightAnchor.constraint(equalToConstant: 75.autoSized),
            
            leftbutton.leadingAnchor.constraint(equalTo: dateView.leadingAnchor, constant: 0.autoSized),
            leftbutton.centerYAnchor.constraint(equalTo: dateView.centerYAnchor, constant: 0),
            leftbutton.widthAnchor.constraint(equalToConstant: 75.autoSized),
            leftbutton.heightAnchor.constraint(equalToConstant: 75.autoSized),
            
            dateLabel.centerXAnchor.constraint(equalTo: dateView.centerXAnchor),
            dateLabel.centerYAnchor.constraint(equalTo: dateView.centerYAnchor),
            
            mainImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -35.autoSized),
            mainImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainImageView.widthAnchor.constraint(equalToConstant: 150.autoSized),
            mainImageView.heightAnchor.constraint(equalToConstant: 150.autoSized),
            
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 15.autoSized),
            
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 90.autoSized),
            
            bottomButton.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor,  constant: 0),
            bottomButton.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -16.autoSized),
            bottomButton.widthAnchor.constraint(equalToConstant: 110.autoSized),
            bottomButton.heightAnchor.constraint(equalToConstant: 40.autoSized),
            
            bottomButtonSecondLabel.centerXAnchor.constraint(equalTo: bottomButton.centerXAnchor),
            bottomButtonSecondLabel.topAnchor.constraint(equalTo: bottomButton.titleLabel!.bottomAnchor, constant: 2.autoSized),
            
            submittedLabel.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor, constant: -20.autoSized),
            submittedLabel.topAnchor.constraint(equalTo: bottomButton.topAnchor),
            
            submittedTime.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor, constant: -20.autoSized),
            submittedTime.bottomAnchor.constraint(equalTo: bottomButton.bottomAnchor),
            
            totalLabel.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 24.autoSized),
            totalLabel.topAnchor.constraint(equalTo: submittedLabel.topAnchor),
            
            totalTime.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 24.autoSized),
            totalTime.bottomAnchor.constraint(equalTo: submittedTime.bottomAnchor)
            
            
        
        
        ])
    }

}
