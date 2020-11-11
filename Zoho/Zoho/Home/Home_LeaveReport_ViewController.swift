//
//  Home_LeaveReport_ViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 11/3/20.
//

import UIKit

class Home_LeaveReport_ViewController: UIViewController {

    let leaveLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Leave Report - 4"
        lbl.font = UIFont.systemFont(ofSize: 30.autoSized, weight: .heavy)
        return lbl
        
    }()
    
    let addButton:UIView = {
       
        let containView = UIView(frame: CGRect(x: 0, y: 0, width: 32.autoSized, height: 32.autoSized))
        containView.backgroundColor = .blue
        let imageview = UIImageView(frame: CGRect(x: -10, y: 5, width: 28.autoSized, height: 28.autoSized))
        imageview.image = UIImage(named: "plus-math")
        imageview.contentMode = .scaleAspectFill
        imageview.layer.cornerRadius = 16.autoSized
        imageview.layer.masksToBounds = true
        containView.addSubview(imageview)
        containView.isUserInteractionEnabled = true
      //  let tapGest = UITapGestureRecognizer(target: self, action: #selector(addNew))
       // containView.addGestureRecognizer(tapGest)
        return containView
        
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
        let imageView = UIImageView(frame: CGRect(x: 0, y: 5.autoSized, width: 28.autoSized, height: 28.autoSized))
        if let imgBackArrow = UIImage(named: "left-arrow") {
            imageView.image = imgBackArrow
        }
        View.addSubview(imageView)
        let backTap = UITapGestureRecognizer(target: self, action: #selector(backToMain))
        View.addGestureRecognizer(backTap)
        
        //PlusButton
        let plusView = UIView(frame: CGRect(x: 0, y: 0, width: 32.autoSized, height: 32.autoSized))
        let plusImageView = UIImageView(frame: CGRect(x: 0, y: 5.autoSized, width: 28.autoSized, height: 28.autoSized))
        if let imgArrow = UIImage(named: "plus-math") {
            plusImageView.image = imgArrow
        }
        plusView.addSubview(plusImageView)
        let addTap = UITapGestureRecognizer(target: self, action: #selector(addNew))
        plusView.addGestureRecognizer(addTap)

        let leftBarButtonItem = UIBarButtonItem(customView: View)
        self.navigationItem.leftBarButtonItem = leftBarButtonItem
        let addBtn = UIBarButtonItem(customView: plusView)
        self.navigationItem.rightBarButtonItem = addBtn
        
    }
    

    @objc func backToMain() {
       
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func addNew() {
        
        
        let vc = Home_ApplyLeave_ViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    func setupTableView() {
        
        view.addSubview(leaveLabel)
        view.addSubview(tableView)
        tableView.register(Home_LeaveReport_TableViewCell.self, forCellReuseIdentifier: "LeaveReportCell")
        
        NSLayoutConstraint.activate([
        
            leaveLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.autoSized),
            leaveLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16.autoSized),
            leaveLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 95.autoSized),
            
            
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32.autoSized),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16.autoSized),
            tableView.topAnchor.constraint(equalTo: leaveLabel.bottomAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        
        
        ])
        
        
    }

}

extension Home_LeaveReport_ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LeaveReportCell") as! Home_LeaveReport_TableViewCell
        cell.backgroundColor = .BackgroundGrey
        cell.title.text = LeaveReportTitleAndDetails.titles[indexPath.row]
        cell.leftView.backgroundColor = .randomColor
        let firstLetter = LeaveReportTitleAndDetails.titles[indexPath.row]
        cell.leftViewLabel.text = firstLetter[0]
        cell.takenLabel.text = "Taken: \(LeaveReportTitleAndDetails.takenLabelArray[indexPath.row]) |"
        cell.balanceLabel.text = " Balance: \(LeaveReportTitleAndDetails.balanceLabelArray[indexPath.row]) Days"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85.autoSized
    }
    
    
}

    


