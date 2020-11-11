//
//  Service_AddRequest_ViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 11/9/20.
//

import UIKit

class Service_AddRequest_ViewController: UIViewController {
    
    
    let topLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Add Request"
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

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .BackgroundGrey
        tblView.tableFooterView = UIView()
        tblView.delegate = self
        tblView.dataSource = self
        setNavigationBar()
        setup()
    }
    
    
    func setup() {
        
        view.addSubview(topLabel)
        view.addSubview(tblView)
        tblView.register(Home_ApplyLeave_TableViewCell.self, forCellReuseIdentifier: "applyLeaveCell")
        
        NSLayoutConstraint.activate([
        
            topLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.autoSized),
            topLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 92.autoSized),
            
            tblView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tblView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tblView.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 15.autoSized),
            tblView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20.autoSized)
            
        ])
    }
    
}


extension Service_AddRequest_ViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8   
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "applyLeaveCell") as! Home_ApplyLeave_TableViewCell
        let text = Services.addRequestTitles[indexPath.row]
        let range = (text as NSString).range(of: "*")
        let attributedString = NSMutableAttributedString(string:text)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red , range: range)
        cell.textLabel!.attributedText = attributedString
        cell.detailTextLabel?.text = Services.addRequestDetail[indexPath.row]
        cell.backgroundColor = .BackgroundGrey
        cell.textLabel?.font = UIFont.systemFont(ofSize: 15.autoSized, weight: .medium)
        cell.detailTextLabel?.font = UIFont.systemFont(ofSize: 15.autoSized, weight: .regular)
        
        if indexPath.row == 0 || indexPath.row == 2 || indexPath.row == 3 {
            let imgV = UIImageView(frame: CGRect(x: 0, y: 0, width: 24.autoSized, height: 24.autoSized))
            imgV.image = UIImage(named: "more")
            cell.accessoryView = imgV
        }
        if indexPath.row == 1 {
            let imgV = UIImageView(frame: CGRect(x: 0, y: 0, width: 20.autoSized, height: 20.autoSized))
            imgV.image = UIImage(named: "calendar")
            cell.accessoryView = imgV
        }
        
        if indexPath.row == 4 || indexPath.row == 5 || indexPath.row == 7 {
            cell.detailTextLabel?.textColor = .lightGray
            cell.detailTextLabel?.font = UIFont.systemFont(ofSize: 14.autoSized, weight: .regular)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75.autoSized
    }
    
}
