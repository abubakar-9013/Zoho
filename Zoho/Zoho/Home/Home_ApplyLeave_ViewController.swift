//
//  Home_ApplyLeave_ViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 11/3/20.
//

import UIKit

class Home_ApplyLeave_ViewController: UIViewController {

    
    let tableView:UITableView = {
       
        let tblview = UITableView()
        tblview.translatesAutoresizingMaskIntoConstraints = false
        return tblview
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .BackgroundGrey
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(Home_ApplyLeave_TableViewCell.self, forCellReuseIdentifier: "applyLeaveCell")
        tableView.separatorColor = .veryLightBlack
        tableView.backgroundColor = .BackgroundGrey
        
        //To show only the rows with data
        tableView.tableFooterView = UIView()
        
        setNavigationBar()
        setUpView()
        
    }
    
    
    func setNavigationBar() {
        
        self.navigationItem.title = "Apply Leave"
        self.navigationItem.setHidesBackButton(true, animated:false)
        let View = UIView(frame: CGRect(x: 0, y: 0, width: 50.autoSized, height: 50.autoSized))
        let imageView = UIImageView(frame: CGRect(x: 0, y: 5.autoSized, width: 32.autoSized, height: 32.autoSized))
        if let imgBackArrow = UIImage(named: "cross") {
            imageView.image = imgBackArrow
        }
        View.addSubview(imageView)
        let backTap = UITapGestureRecognizer(target: self, action: #selector(backToMain))
        View.addGestureRecognizer(backTap)
        
        //PlusButton
        let plusView = UIView(frame: CGRect(x: 0, y: 0, width: 50.autoSized, height: 50.autoSized))
        let plusImageView = UIImageView(frame: CGRect(x: 20.autoSized, y: 5.autoSized, width: 28.autoSized, height: 28.autoSized))
        if let imgArrow = UIImage(named: "tick") {
            plusImageView.image = imgArrow
        }
        plusView.addSubview(plusImageView)
        let addTap = UITapGestureRecognizer(target: self, action: #selector(done))
        plusView.addGestureRecognizer(addTap)

        let leftBarButtonItem = UIBarButtonItem(customView: View)
        self.navigationItem.leftBarButtonItem = leftBarButtonItem
        let addBtn = UIBarButtonItem(customView: plusView)
        self.navigationItem.rightBarButtonItem = addBtn
        
    }
    

    @objc func backToMain() {
       
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func done() {
        
        
        print("Done")
        
    }

    
    func setUpView() {
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
        
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10.autoSized),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        
        ])
    }
    
    
}


extension Home_ApplyLeave_ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "applyLeaveCell") as! Home_ApplyLeave_TableViewCell
        cell.backgroundColor = .BackgroundGrey
        let text = ApplyLeaveDetails.headings[indexPath.row]
        let range = (text as NSString).range(of: "*")
        let attributedString = NSMutableAttributedString(string:text)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red , range: range)
        cell.textLabel!.attributedText = attributedString
        cell.detailTextLabel?.text = ApplyLeaveDetails.subs[indexPath.row]
        cell.textLabel?.font = UIFont.systemFont(ofSize: 16.autoSized,weight: .medium)
        if indexPath.row != 5 {
            cell.detailTextLabel?.font = UIFont.systemFont(ofSize: 15.autoSized)
        }
        else {
            cell.detailTextLabel?.font = UIFont.systemFont(ofSize: 14.autoSized)
        }
        
        if indexPath.row == 1 || indexPath.row == 4 || indexPath.row == 5 {
            cell.detailTextLabel?.textColor = .gray
        }
        
        if indexPath.row == 0 || indexPath.row == 1 {
            let imgV = UIImageView(frame: CGRect(x: 0, y: 0, width: 28.autoSized, height: 28.autoSized))
            imgV.image = UIImage(named: "more")
            cell.accessoryView = imgV
        }
        else if indexPath.row == 2 || indexPath.row == 3 {
            
            let imgV = UIImageView(frame: CGRect(x: 0, y: 0, width: 20.autoSized, height: 20.autoSized))
            imgV.image = UIImage(named: "calendar")
            cell.accessoryView = imgV
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 75.autoSized
    }
    
    
}
