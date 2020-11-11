//
//  Service_LeaveDetail_ViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 11/9/20.
//

import UIKit

class Service_LeaveDetail_ViewController: UIViewController {

    
    let topLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Details"
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
    
    let headerView: UIView = {
    
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
       return view
        
    }()
    

    let headerLabel: UILabel = {
    
        let lbl = UILabel()
        lbl.text = "Hello"
        lbl.translatesAutoresizingMaskIntoConstraints = false
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
    
    override func viewWillLayoutSubviews() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .BackgroundGrey
        self.tabBarController?.tabBar.isHidden = true
        
        tblView.delegate = self
        tblView.dataSource = self
        setNavigationBar()
        setup()
    }
    
    func setup() {
        
        view.addSubview(topLabel)
        view.addSubview(tblView)
        tblView.register(Service_LeaveDetails_TableViewCell.self, forCellReuseIdentifier: "leaveDetailCell")
      //  headerView.addSubview(headerLabel)
      //  tblView.tableHeaderView = headerView
      //  tblView.tableHeaderView?.backgroundColor = .blue
        
        
        NSLayoutConstraint.activate([
        
            topLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.autoSized),
            topLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 92.autoSized),
            
            tblView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tblView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tblView.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 20.autoSized),
            tblView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20.autoSized),
            
//            headerView.leadingAnchor.constraint(equalTo: tblView.leadingAnchor),
//            headerView.trailingAnchor.constraint(equalTo: tblView.trailingAnchor),
//            headerView.topAnchor.constraint(equalTo: tblView.topAnchor),
//            headerView.heightAnchor.constraint(equalToConstant: 30.autoSized),
//            
//            headerLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor),
//            headerLabel.centerYAnchor.constraint(equalTo: headerView.centerYAnchor)
            
        ])
        
    }

}

extension Service_LeaveDetail_ViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "leaveDetailCell") as! Service_LeaveDetails_TableViewCell
        cell.textLabel?.text =  Services.leaveDetailTitle[indexPath.row]
        cell.detailTextLabel?.text = Services.leaveDetailSubtitle[indexPath.row]
        
        if indexPath.row == 2 {
            cell.imageV.isHidden = false
        }
        else {
            cell.imageV.isHidden = true
        }
        
        
        //To show full separator Lines
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero
        return cell
    }
    
    
    
    
}
