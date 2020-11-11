//
//  Home_DepartmentMembers_ViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 11/3/20.
//

import UIKit

class Home_DepartmentMembers_ViewController: UIViewController {

    
    let deptLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Department Members"
        lbl.font = UIFont.systemFont(ofSize: 30.autoSized, weight: .heavy)
        return lbl
        
    }()
    
    
    let tableView:UITableView = {
       
        let tbl = UITableView()
        tbl.translatesAutoresizingMaskIntoConstraints = false
        return tbl
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.isHidden = true
        tableView.delegate = self
        tableView.dataSource = self
        view.backgroundColor = .BackgroundGrey
        tableView.backgroundColor = .BackgroundGrey
        tableView.separatorStyle = .none
        setupTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setNavigationBar()
    }
    
    
    func setNavigationBar() {

        self.navigationItem.setHidesBackButton(true, animated:false)
        let View = UIView(frame: CGRect(x: 0, y: 0, width: 50.autoSized, height: 50.autoSized))
        let imageView = UIImageView(frame: CGRect(x: 0, y: 10.autoSized, width: 25.autoSized, height: 30.autoSized))
        if let imgBackArrow = UIImage(named: "left-arrow") {
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
    
    
    func setupTableView() {
        
        view.addSubview(deptLabel)
        view.addSubview(tableView)
        tableView.register(Home_Department_TableViewCell.self, forCellReuseIdentifier: "DepartmentCell")
        
        NSLayoutConstraint.activate([
        
            deptLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.autoSized),
            deptLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16.autoSized),
            deptLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 95.autoSized),
            
            
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32.autoSized),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16.autoSized),
            tableView.topAnchor.constraint(equalTo: deptLabel.bottomAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        
        
        ])
        
        
    }

}

extension Home_DepartmentMembers_ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DepartmentCell") as! Home_Department_TableViewCell
        
        cell.backgroundColor = .BackgroundGrey
        cell.profilePicImageView.image = UIImage(named: "profilePicture")
        cell.NameTitle.text = DeptMembersTitlesAndDetails.titles[indexPath.row]
        cell.personID.text = DeptMembersTitlesAndDetails.ids[indexPath.row]
        cell.mobileNumberLabel.text = DeptMembersTitlesAndDetails.mobileNumbers[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85.autoSized
    }
    
    
}
