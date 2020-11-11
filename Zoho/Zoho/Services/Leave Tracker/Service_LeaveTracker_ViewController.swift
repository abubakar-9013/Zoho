//
//  Service_LeaveTracker_ViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 11/9/20.
//

import UIKit

class Service_LeaveTracker_ViewController: UIViewController {

    let topLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Leave Tracker"
        lbl.font = UIFont.systemFont(ofSize: 32.autoSized, weight: .heavy)
        return lbl
        
    }()
    
    let tblView:UITableView = {
       
        let tbl = UITableView()
        tbl.translatesAutoresizingMaskIntoConstraints = false
        tbl.backgroundColor = .BackgroundGrey
        tbl.separatorStyle = .none
        return tbl
        
    }()
    
    
    func setNavigationBar() {

        self.navigationItem.setHidesBackButton(true, animated:false)
        let View = UIView(frame: CGRect(x: 0, y: 0, width: 50.autoSized, height: 50.autoSized))
        let imageView = UIImageView(frame: CGRect(x: 0, y: 6.autoSized, width: 32.autoSized, height: 32.autoSized))
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

        // Do any additional setup after loading the view.
        view.backgroundColor = .BackgroundGrey
        tblView.delegate = self
        tblView.dataSource = self
        setNavigationBar()
        setup()
    }
    
    func setup() {
        
        view.addSubview(topLabel)
        view.addSubview(tblView)
        tblView.register(Service_LeaveTracker_TableViewCell.self, forCellReuseIdentifier: "leaveTrackerCell")
        
        NSLayoutConstraint.activate([
        
            topLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.autoSized),
            topLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 92.autoSized),
            
            tblView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.autoSized),
            tblView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16.autoSized),
            tblView.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 16.autoSized),
            tblView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16.autoSized)
            
        
        
        ])
        
    }
    
}


extension Service_LeaveTracker_ViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "leaveTrackerCell") as! Service_LeaveTracker_TableViewCell
        cell.textLabel?.text = Services.leaveTracker[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
                let vc = Service_LeaveView_ViewController()
                self.navigationController?.pushViewController(vc, animated: true)
        case 1:
                let vc = Service_CompensatoryReq_ViewController()
                self.navigationController?.pushViewController(vc, animated: true)
        case 2:
                let vc = Service_Holidays_ViewController()
                self.navigationController?.pushViewController(vc, animated: true)
        default:
            print("Default")
        }
    }
    
    
    
    
}
