//
//  Service_Holidays_ViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 11/10/20.
//

import UIKit

class Service_Holidays_ViewController: UIViewController {

    let topLabel:UILabel = {
       
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Holidays"
        lbl.font = UIFont.systemFont(ofSize: 32.autoSized, weight: .bold)
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
        let imageView = UIImageView(frame: CGRect(x: 0, y: 5.autoSized, width: 32.autoSized, height: 32.autoSized))
        if let imgBackArrow = UIImage(named: "left-arrow") {
            imageView.image = imgBackArrow
        }
        let backTap = UITapGestureRecognizer(target: self, action: #selector(backToMain))
        imageView.addGestureRecognizer(backTap)
    
        let leftBarButtonItem = UIBarButtonItem(customView: imageView)
        self.navigationItem.leftBarButtonItem = leftBarButtonItem
        
    }
    

    @objc func backToMain() {
       
        self.navigationController?.popViewController(animated: true)
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
        view.addSubview(tblView)
        tblView.register(Service_Holiday_TableViewCell.self, forCellReuseIdentifier: "holidaysCell")
        
        
        NSLayoutConstraint.activate([
        
            topLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.autoSized),
            topLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 92.autoSized),
            
            tblView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tblView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tblView.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 15.autoSized),
            tblView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20.autoSized),
        ])
    }
    

}

extension Service_Holidays_ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "holidaysCell") as! Service_Holiday_TableViewCell
        cell.leftView.backgroundColor = .randomColor
        cell.textLabel?.text = Services.holidaysTitles[indexPath.row]
        cell.detailTextLabel?.text = Services.holidaysDate[indexPath.row]
        cell.leftViewLabel.text = Services.holidaysTitles[indexPath.row][0]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85.autoSized
    }
    
    
}
