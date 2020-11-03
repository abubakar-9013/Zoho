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
        lbl.font = UIFont.systemFont(ofSize: 36.autoSized, weight: .heavy)
        return lbl
        
    }()
    
    
    let tableView:UITableView = {
       
        let tbl = UITableView()
        tbl.translatesAutoresizingMaskIntoConstraints = false
        return tbl
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        setupTableView()
    }
    
    
    func setupTableView() {
        
        view.addSubview(deptLabel)
        view.addSubview(tableView)
        tableView.register(Home_DepartmentMembers_TableViewCell.self, forCellReuseIdentifier: "deptCell")
        
        NSLayoutConstraint.activate([
        
            deptLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8.autoSized),
            deptLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8.autoSized),
            deptLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50.autoSized),
            
            
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "deptCell") as! Home_DepartmentMembers_TableViewCell
        cell.backgroundColor = .blue
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85.autoSized
    }
    
    
}
