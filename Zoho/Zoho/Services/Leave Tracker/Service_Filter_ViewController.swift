//
//  Service_Filter_ViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 11/9/20.
//

import UIKit

class Service_Filter_ViewController: UIViewController {

    let topLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Filter"
        lbl.font = UIFont.systemFont(ofSize: 32.autoSized, weight: .bold)
        return lbl
        
    }()
    
    let tblView:UITableView = {
       
        let tbl = UITableView()
        tbl.translatesAutoresizingMaskIntoConstraints = false
        tbl.backgroundColor = .BackgroundGrey
        tbl.showsVerticalScrollIndicator = false
        tbl.separatorColor = .veryLightBlack
        return tbl
        
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
        return view
        
    }()
    
    let bottomButton:UIButton = {
       
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("APPLY", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 14.autoSized, weight: .heavy)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .segmentControlGreen
        btn.layer.cornerRadius = 25.autoSized
        return btn
        
    }()
    
    func setNavigationBar() {
        
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
        let resetBtn = UIBarButtonItem(title: "Reset All", style: .plain, target: self, action: nil)
        self.navigationItem.rightBarButtonItem = resetBtn
        
    }
    

    @objc func backToMain() {
       
        self.navigationController?.popViewController(animated: true)
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        view.backgroundColor = .BackgroundGrey
        
        view.addSubview(topLabel)
        view.addSubview(tblView)
        bottomView.addSubview(bottomButton)
        view.addSubview(bottomView)
        tblView.register(Home_ApplyLeave_TableViewCell.self, forCellReuseIdentifier: "applyLeaveCell")
        tblView.delegate = self
        tblView.dataSource = self
        setNavigationBar()
        setup()
    }

    func setup() {
        
        
        NSLayoutConstraint.activate([
            
            topLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.autoSized),
            topLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 92.autoSized),
            
            tblView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tblView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tblView.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 15.autoSized),
            tblView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20.autoSized),
            
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 90.autoSized),
            
            bottomButton.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor,  constant: -10.autoSized),
            bottomButton.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor),
            bottomButton.widthAnchor.constraint(equalToConstant: 130.autoSized),
            bottomButton.heightAnchor.constraint(equalToConstant: 50.autoSized)
            
        ])
       
    }
}

extension Service_Filter_ViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "applyLeaveCell") as! Home_ApplyLeave_TableViewCell
        cell.textLabel?.text = Services.filterTitle[indexPath.row]
        cell.detailTextLabel?.text = Services.filterDetails[indexPath.row]
        cell.textLabel?.font = UIFont.systemFont(ofSize: 16.autoSized, weight: .medium)
        cell.detailTextLabel?.font = UIFont.systemFont(ofSize: 15.autoSized, weight: .regular)
        let imgV = UIImageView(frame: CGRect(x: 0, y: 0, width: 18.autoSized, height: 18.autoSized))
        imgV.image = UIImage(named: "more")
        cell.accessoryView = imgV
        
        if indexPath.row == 2 || indexPath.row == 3 {
            cell.textLabel?.alpha = 0.4
            cell.detailTextLabel?.alpha = 0.4
            cell.accessoryView?.alpha = 0.4
            cell.isUserInteractionEnabled = false
        }
        cell.backgroundColor = .BackgroundGrey
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75.autoSized
    }
    
    
}
