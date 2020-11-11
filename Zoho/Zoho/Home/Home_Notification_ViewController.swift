//
//  Home_Notification_ViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 11/5/20.
//

import UIKit

class Home_Notification_ViewController: UIViewController {
    
    let tblView:UITableView = {
       
        let tbl = UITableView()
        tbl.translatesAutoresizingMaskIntoConstraints = false
        tbl.backgroundColor = .BackgroundGrey
        
        return tbl
        
    }()
    
    let headerView:UIView = {

        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view

    }()

    let headerLabel :UILabel = {

        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Notifications"
        lbl.font = UIFont.systemFont(ofSize: 34.autoSized, weight: .bold)
        return lbl

    }()
    
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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        view.backgroundColor = .BackgroundGrey
        view.addSubview(tblView)
        tblView.register(Home_Notification_TableViewCell.self, forCellReuseIdentifier: "notificationCell")
        tblView.separatorStyle = .none
        tblView.showsVerticalScrollIndicator = false
        tblView.delegate = self
        tblView.dataSource = self
        
        headerView.addSubview(headerLabel)
        view.addSubview(headerView)
        
        setNavigationBar()
        
        
        NSLayoutConstraint.activate([
        
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24.autoSized),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16.autoSized),
            headerView.heightAnchor.constraint(equalToConstant: 70.autoSized),
            headerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 85.autoSized),

            headerLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 0),
            headerLabel.centerYAnchor.constraint(equalTo: headerView.centerYAnchor, constant: 0),
            
            tblView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.autoSized),
            tblView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16.autoSized),
            tblView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 0.autoSized),
            tblView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50.autoSized),
//

            
        
        
        ])
    
    }
 
}


extension Home_Notification_ViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "notificationCell") as! Home_Notification_TableViewCell
        cell.backgroundColor = .BackgroundGrey
        cell.leftImageView.image = UIImage(named: "clock")
        if indexPath.row % 2 == 0 {
            cell.textLabel!.text = "Reminder for check-in"
            cell.detailTextLabel!.text = "Yesterday 9:00 AM"
        }
        else {
            cell.textLabel!.text = "Reminder for check-out"
            cell.detailTextLabel!.text = "Yesterday 6:00 PM"
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85.autoSized
    }
    
    
}
