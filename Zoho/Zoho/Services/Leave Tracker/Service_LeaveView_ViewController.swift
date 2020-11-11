//
//  Service_LeaveView_ViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 11/9/20.
//

import UIKit

class Service_LeaveView_ViewController: UIViewController {

    let topLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Leave View"
        lbl.font = UIFont.systemFont(ofSize: 32.autoSized, weight: .bold)
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
    
    let tblView:UITableView = {
       
        let tbl = UITableView()
        tbl.translatesAutoresizingMaskIntoConstraints = false
        tbl.backgroundColor = .BackgroundGrey
        tbl.separatorStyle = .none
        tbl.showsVerticalScrollIndicator = false
        return tbl
        
    }()
    
    let bottomButton:UIButton = {
       
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .white
        btn.setTitle("VIEW LEAVE BALANCE", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 14.autoSized, weight: .medium)
        btn.layer.shadowColor = UIColor.veryLightGrey.cgColor
        btn.layer.shadowOffset = CGSize(width: -1.0, height: 6.0)
        btn.layer.shadowRadius = 2.0
        btn.layer.shadowOpacity = 0.5
        btn.layer.masksToBounds = false
        return btn
        
    }()
    
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
        let plusImageView = UIImageView(frame: CGRect(x: 0, y: 0.autoSized, width: 28.autoSized, height: 28.autoSized))
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
        
        
       // let vc = Home_ApplyLeave_ViewController()
       // self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        view.backgroundColor = .BackgroundGrey
        
        tblView.delegate = self
        tblView.dataSource = self
        setNavigationBar()
        setup()
        
    }
    
    func setup() {
        view.addSubview(topLabel)
        view.addSubview(dateView)
        dateView.addSubview(rightbutton)
        dateView.addSubview(leftbutton)
        dateView.addSubview(dateLabel)
        view.addSubview(tblView)
        tblView.register(Service_LeaveView_TableViewCell.self, forCellReuseIdentifier: "leaveViewCell")
        view.addSubview(bottomButton)
        
        
        NSLayoutConstraint.activate([
        
            topLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.autoSized),
            topLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 92.autoSized),
            
            dateView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
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
            
            tblView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24.autoSized),
            tblView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16.autoSized),
            tblView.topAnchor.constraint(equalTo: dateView.bottomAnchor, constant: 20.autoSized),
            tblView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50.autoSized),
            
            bottomButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomButton.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomButton.heightAnchor.constraint(equalToConstant: 70.autoSized)
            
        ])
    }
    
}


extension Service_LeaveView_ViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "leaveViewCell", for: indexPath) as! Service_LeaveView_TableViewCell
        cell.leftViewLabel.text = "1 Day"
        cell.dateLabel.text = Services.leaveViewDate[indexPath.row]
        
        if indexPath.row == 0 || indexPath.row == 1 {
            cell.title.text = "Sick"
            cell.convertLeaveButton.isHidden = true
            cell.leaveStatus.text = "Pending"
            cell.leftView.backgroundColor = .blue
        }
        else {
            cell.title.text = "Absent"
            cell.leftView.backgroundColor = .red
            cell.leaveStatus.text = ""
            cell.convertLeaveButton.isHidden = false
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = Service_LeaveDetail_ViewController()
        let cell = tableView.dequeueReusableCell(withIdentifier: "leaveViewCell") as! Service_LeaveView_TableViewCell
        if cell.title.text == "Absent" {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85.autoSized
    }
    
    
}
