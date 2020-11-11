//
//  Home_Health_ViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 11/4/20.
//

import UIKit

class Home_Health_ViewController: UIViewController {

    let firstView = CustomViewForHealth()
    let secondView = CustomViewForHealth()
    let thirdView = CustomViewForHealth()
    
    let healthLabel : UILabel = {
       
        let lbl = UILabel()
        lbl.text = "How is your health?"
        lbl.font = UIFont.systemFont(ofSize: 22.autoSized, weight: .bold)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
        
    }()
    
    let covidLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.text = "Let us know to combat Covid-19 better, together!"
        lbl.font = UIFont.systemFont(ofSize: 16.autoSized, weight: .regular)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.textAlignment = .center
        return lbl
        
    }()
    
    let submitButton:UIButton = {
       
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .buttonGreen
        btn.setTitleColor(.white, for: .normal)
        btn.setTitle("SUBMIT", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 14.autoSized, weight: .medium)
        btn.layer.cornerRadius = 18.autoSized
        return btn
        
    }()
    
    func setupNav() {
        self.navigationItem.setHidesBackButton(true, animated:false)
        let View = UIView(frame: CGRect(x: 0, y: 0, width: 50.autoSized, height: 50.autoSized))
        let imageView = UIImageView(frame: CGRect(x: 0, y: 5.autoSized, width: 32.autoSized, height: 32.autoSized))
        if let imgBackArrow = UIImage(named: "cross") {
            imageView.image = imgBackArrow
        }
        View.addSubview(imageView)
        let backTap = UITapGestureRecognizer(target: self, action: #selector(backToMain))
        View.addGestureRecognizer(backTap)
        
        let leftBarButtonItem = UIBarButtonItem(customView: View)
        self.navigationItem.leftBarButtonItem = leftBarButtonItem
    }
    
    @objc func backToMain() {
       
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    override func viewDidLayoutSubviews() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.isHidden = true
        view.backgroundColor = .LightWhite
        // Do any additional setup after loading the view.
        view.addSubview(firstView)
        view.addSubview(secondView)
        view.addSubview(thirdView)
        view.addSubview(healthLabel)
        view.addSubview(covidLabel)
        view.addSubview(submitButton)
        
        setupNav()
        
        firstView.imageView.image = UIImage(named: "sick")
        firstView.label.text = "I am sick."
        
        secondView.imageView.image = UIImage(named: "familySick")
        secondView.label.text = "My family member is sick."
        
        thirdView.imageView.image = UIImage(named: "fine")
        thirdView.label.text = "We are in good health!"
        
        NSLayoutConstraint.activate([
            
            healthLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 85.autoSized),
            healthLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            
            covidLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            covidLabel.topAnchor.constraint(equalTo: healthLabel.bottomAnchor, constant: 8.autoSized),
            covidLabel.widthAnchor.constraint(equalToConstant: 250.autoSized),
            
            
            firstView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            firstView.widthAnchor.constraint(equalToConstant: 290.autoSized),
            firstView.topAnchor.constraint(equalTo: covidLabel.bottomAnchor, constant: 50.autoSized),
            firstView.heightAnchor.constraint(equalToConstant: 120.autoSized),
            
            
            firstView.imageView.leadingAnchor.constraint(equalTo: firstView.leadingAnchor, constant: 20.autoSized),
            firstView.imageView.bottomAnchor.constraint(equalTo: firstView.bottomAnchor, constant: 0),
            firstView.imageView.widthAnchor.constraint(equalToConstant: 100.autoSized),
            firstView.imageView.heightAnchor.constraint(equalToConstant: 100.autoSized),
            
            firstView.label.trailingAnchor.constraint(equalTo: firstView.trailingAnchor, constant: -30.autoSized),
            firstView.label.leadingAnchor.constraint(equalTo: firstView.imageView.trailingAnchor, constant: 30.autoSized),
            firstView.label.centerYAnchor.constraint(equalTo: firstView.centerYAnchor, constant: 0),
            
            secondView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            secondView.widthAnchor.constraint(equalToConstant: 280.autoSized),
            secondView.topAnchor.constraint(equalTo: firstView.bottomAnchor, constant: 20.autoSized),
            secondView.heightAnchor.constraint(equalToConstant: 120.autoSized),
            
            secondView.imageView.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 10.autoSized),
            secondView.imageView.bottomAnchor.constraint(equalTo: secondView.bottomAnchor, constant: 0),
            secondView.imageView.widthAnchor.constraint(equalToConstant: 120.autoSized),
            secondView.imageView.heightAnchor.constraint(equalToConstant: 120.autoSized),
            
            secondView.label.trailingAnchor.constraint(equalTo: secondView.trailingAnchor, constant: -10.autoSized),
            secondView.label.leadingAnchor.constraint(equalTo: secondView.imageView.trailingAnchor, constant: 10.autoSized),
            secondView.label.centerYAnchor.constraint(equalTo: secondView.centerYAnchor, constant: 0),
            
        
            thirdView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            thirdView.widthAnchor.constraint(equalToConstant: 280.autoSized),
            thirdView.topAnchor.constraint(equalTo: secondView.bottomAnchor, constant: 20.autoSized),
            thirdView.heightAnchor.constraint(equalToConstant: 120.autoSized),
            
            thirdView.imageView.leadingAnchor.constraint(equalTo: thirdView.leadingAnchor, constant: 20.autoSized),
            thirdView.imageView.bottomAnchor.constraint(equalTo: thirdView.bottomAnchor, constant: -10.autoSized),
            thirdView.imageView.widthAnchor.constraint(equalToConstant: 100.autoSized),
            thirdView.imageView.heightAnchor.constraint(equalToConstant: 100.autoSized),
            
            thirdView.label.trailingAnchor.constraint(equalTo: secondView.trailingAnchor, constant: -10.autoSized),
            thirdView.label.leadingAnchor.constraint(equalTo: thirdView.imageView.trailingAnchor, constant: 10.autoSized),
            thirdView.label.centerYAnchor.constraint(equalTo: thirdView.centerYAnchor, constant: 0),
            
            submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            submitButton.widthAnchor.constraint(equalToConstant: 140.autoSized),
            submitButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80.autoSized),
            submitButton.heightAnchor.constraint(equalToConstant: 47.autoSized)
            
        
        ])
    }
    
    
    

}
